class ProductoTerminado < ActiveRecord::Base
  belongs_to :modelo
  belongs_to :categoria_producto
end
