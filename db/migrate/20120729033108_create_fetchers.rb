class CreateFetchers < ActiveRecord::Migration
  def change
    create_table :fetchers do |t|
      t.integer :fetched

      t.timestamps
    end
  end
end
