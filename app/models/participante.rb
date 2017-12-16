class Participante < ApplicationRecord
  has_many :encontro_participantes
  has_many :encontros, through: :encontro_participantes
end
