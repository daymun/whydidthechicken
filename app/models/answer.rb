class Answer < ActiveRecord::Base
  attr_accessible :reason, :tweet_id, :screen_name
  
  def filtered_reason
    reason.gsub('@whydidthechickn ', '')
  end
  
  def permalink
    "#{id}-#{filtered_reason.parameterize}"
  end
end