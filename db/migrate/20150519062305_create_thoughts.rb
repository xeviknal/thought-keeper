class CreateThoughts < ActiveRecord::Migration
  def change
    create_table :thoughts do |t|
      t.string :title
      t.text :description
      t.integer :weight, default: 1
      t.integer :list_id

      t.timestamps
    end
  end
end
