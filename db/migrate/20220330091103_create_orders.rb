class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :part
      t.integer :pu_qty, null: false, default:0
      t.boolean :is_personal, null: false, defalut: false
      
      t.timestamps
    end
  end
end
