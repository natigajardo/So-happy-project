json.extract! order_item, :id, :quantity, :price, :order_id, :variant_id, :created_at, :updated_at
json.url order_item_url(order_item, format: :json)
