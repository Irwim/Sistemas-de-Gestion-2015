class SolicitudDetalle < ActiveRecord::Base
  belongs_to :solicitud_monitor_teclado
  belongs_to :componente
end
