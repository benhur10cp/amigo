class CreateParticipantes < ActiveRecord::Migration[5.1]
  def change
    create_table :participantes do |t|

      t.timestamps
    end
  end
end
