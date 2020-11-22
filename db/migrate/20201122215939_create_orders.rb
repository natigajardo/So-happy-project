class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :number_order
      t.decimal :total
      t.references :user, foreign_key: true
      t.references :product_instance, foreign_key: true

      t.timestamps
    end
  end
end
