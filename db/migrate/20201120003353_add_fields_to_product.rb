class AddFieldsToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :author, :string
    add_column :products, :status, :integer
  end
end
