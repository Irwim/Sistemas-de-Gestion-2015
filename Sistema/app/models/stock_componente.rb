class StockComponente < ActiveRecord::Base
  belongs_to :deposito
  belongs_to :componente
end
