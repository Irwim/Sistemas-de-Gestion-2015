class MovimientoComponente < ActiveRecord::Base
  belongs_to :deposito
  belongs_to :componente
  belongs_to :tipo_de_movimiento
end
