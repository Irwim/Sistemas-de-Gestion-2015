class StockProductoTerminado < ActiveRecord::Base
  belongs_to :deposito
  belongs_to :producto_terminado
end
