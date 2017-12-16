class AddEncontroToEncontroParticipantes < ActiveRecord::Migration[5.1]
  def change
    add_reference :encontro_participantes, :encontro, foreign_key: true
  end
end
