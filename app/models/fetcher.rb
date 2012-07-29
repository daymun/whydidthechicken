class Fetcher < ActiveRecord::Base
  attr_accessible :fetched
  
  def self.fetch!
    last_fetched = self.last
    # if didn't fetch in last 5 minutes, then fetch now
    add_count = 0
    if last_fetched.nil? || last_fetched.created_at < (Time.now - 1.minute)
      Twitter.search("to:whydidthechickn because").results.map do |tweet|
        unless Answer.exists?(tweet_id: tweet.id)
          add_count += 1
          Answer.create!(tweet_id: tweet.id, reason: tweet.text, screen_name: tweet.from_user)
        end
      end
      
      create!(fetched: add_count)
    end
  end
end