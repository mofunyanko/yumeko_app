class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :group
      t.references :part
      t.boolean :is_personal, null: false, defalut: false
      
      t.timestamps
    end
  end
end
