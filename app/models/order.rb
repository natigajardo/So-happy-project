class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product_instance

  enum status: [:pendiente, :aceptado, :rechazado, :enviado, :finalizado]
end
