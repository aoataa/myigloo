class AddUserToIgloos < ActiveRecord::Migration[6.0]
  def change
    add_reference :igloos, :user, foreign_key: true
  end
end
