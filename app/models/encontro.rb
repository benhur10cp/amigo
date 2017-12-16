class Encontro < ApplicationRecord
  has_many :encontro_participantes, dependent: :destroy
  accepts_nested_attributes_for :encontro_participantes, allow_destroy: true

  has_many :participantes, through: :encontro_participantes
  accepts_nested_attributes_for :participantes
end
