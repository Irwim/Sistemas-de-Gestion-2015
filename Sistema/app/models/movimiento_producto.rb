class MovimientoProducto < ActiveRecord::Base
  belongs_to :deposito
  belongs_to :producto_terminado
  belongs_to :tipo_de_movimiento
end
