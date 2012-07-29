class AddScreenNameToAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :screen_name, :string
  end
end
