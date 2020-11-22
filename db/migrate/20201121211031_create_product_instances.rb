class CreateProductInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :product_instances do |t|
      t.decimal :price
      t.string :size
      t.boolean :sold, default: false
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
