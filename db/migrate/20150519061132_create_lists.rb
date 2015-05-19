class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :thoughts_count
      t.integer :weight

      t.timestamps
    end
  end
end
