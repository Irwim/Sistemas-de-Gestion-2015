class Componente < ActiveRecord::Base
	validates :nombre , presence: true
	validates :ppp , presence: true
	validates :cantidad_minima , presence: true
	validates :codigo_interno, presence: true
end
