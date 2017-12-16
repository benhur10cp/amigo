class EncontroParticipante < ApplicationRecord
  belongs_to :participante
  belongs_to :encontro
end
