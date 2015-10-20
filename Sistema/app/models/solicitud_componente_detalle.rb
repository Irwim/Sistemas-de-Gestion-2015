class SolicitudComponenteDetalle < ActiveRecord::Base
  belongs_to :solicitud_componente
  belongs_to :componente
end
