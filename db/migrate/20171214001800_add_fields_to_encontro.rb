class AddFieldsToEncontro < ActiveRecord::Migration[5.1]
  def change
    add_column :encontros, :nome, :string
    add_column :encontros, :codigo, :string
  end
end
