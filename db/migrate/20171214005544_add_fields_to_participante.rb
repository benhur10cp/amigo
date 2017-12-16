class AddFieldsToParticipante < ActiveRecord::Migration[5.1]
  def change
    add_column :participantes, :nome, :string
    add_column :participantes, :email, :string
  end
end
