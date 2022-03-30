class CreateParts < ActiveRecord::Migration[6.1]
  def change
    create_table :parts do |t|
      t.string :name, null: false, default: '' 
      t.integer :price, null: false, default: 0
      t.integer :count, null: false, default: 1 

      t.timestamps
    end
  end
end
