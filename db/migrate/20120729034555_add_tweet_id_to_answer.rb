class AddTweetIdToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :tweet_id, :integer
  end
end
