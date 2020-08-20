class AddcolumnToIgloo < ActiveRecord::Migration[6.0]
  def change
    add_column :igloos, :price, :integer
    add_column :igloos, :rating, :integer
  end
end

