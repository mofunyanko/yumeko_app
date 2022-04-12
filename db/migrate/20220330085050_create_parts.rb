class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name, null: false, default: '' 
      t.integer :price, null: false, default: 0
      t.integer :quantity, null: false, default: 1 
      t.references :parts_category, foreign_key: true

      t.timestamps
    end
  end
end
