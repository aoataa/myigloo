class AddUserToIgloos < ActiveRecord::Migration[6.0]
  def change
    add_reference :igloos, :user, null: false, foreign_key: true
  end
end
