class CreateEncontroParticipantes < ActiveRecord::Migration[5.1]
  def change
    create_table :encontro_participantes do |t|

      t.timestamps
    end
  end
end
