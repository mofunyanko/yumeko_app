class CreatePartsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :parts_categories do |t|
      t.string :name, null: false, default: ''

      t.timestamps
    end
  end
end
