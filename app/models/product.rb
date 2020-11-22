class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :variants
  has_many :product_instances

  #si no hay stock, no muestra el producto
  def visible_on_web?
    self.variants.each do |variant|
      if variant.stock > 0
        return true
      end
      false 
    end
  end
end
