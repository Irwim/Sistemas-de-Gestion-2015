class OrdenDeProduccionDetalle < ActiveRecord::Base
  belongs_to :orden_de_produccion
  belongs_to :producto_terminado
end
