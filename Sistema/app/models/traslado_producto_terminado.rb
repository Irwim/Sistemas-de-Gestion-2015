class TrasladoProductoTerminado < ActiveRecord::Base
  belongs_to :orden_de_produccion
  belongs_to :deposito
  belongs_to :deposito
end
