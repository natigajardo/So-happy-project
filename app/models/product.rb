class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :product_instances, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  #si no hay stock, no muestra el producto
  def visible_on_web?
    self.variants.each do |variant|
      if variant.stock > 0
        return true
      end
      false 
    end
  end

  def product_instances_distinct
    self.product_instances.select(:size, :price, :product_id).distinct 
  end 

  

end
