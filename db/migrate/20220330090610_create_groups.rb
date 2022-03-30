class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false, default: ''
      t.string :responsible, null: false, default: ''
      t.string :email, null: false, default: '' 

      t.timestamps
    end
  end
end
