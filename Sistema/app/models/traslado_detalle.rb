class TrasladoDetalle < ActiveRecord::Base
  belongs_to :traslado_producto_terminado
  belongs_to :producto_terminado
end
