class AddCoordinatesToIgloo < ActiveRecord::Migration[6.0]
  def change
    add_column :igloos, :latitude, :float
    add_column :igloos, :longitude, :float
  end
end
