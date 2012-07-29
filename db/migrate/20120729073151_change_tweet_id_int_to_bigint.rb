class ChangeTweetIdIntToBigint < ActiveRecord::Migration
  def up
    change_column :answers, :tweet_id, :bigint
  end

  def down
    change_column :answers, :tweet_id, :int
  end
end
