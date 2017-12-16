class AddIndexCodigoEncontro < ActiveRecord::Migration[5.1]
  def change
    add_index :encontros, :codigo, unique: true
  end
end
