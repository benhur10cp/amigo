class AddParticipanteToEncontroParticipantes < ActiveRecord::Migration[5.1]
  def change
    add_reference :encontro_participantes, :participante, foreign_key: true
  end
end
