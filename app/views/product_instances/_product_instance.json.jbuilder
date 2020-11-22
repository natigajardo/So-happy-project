json.extract! product_instance, :id, :price, :size, :sold, :product_id, :created_at, :updated_at
json.url product_instance_url(product_instance, format: :json)
