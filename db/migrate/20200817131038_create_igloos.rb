class CreateIgloos < ActiveRecord::Migration[6.0]
  def change
    create_table :igloos do |t|
      t.string :name
      t.string :address
      t.string :description

      t.timestamps
    end
  end
end
