class AddImageToCosmetics < ActiveRecord::Migration
  def change
    add_column :cosmetics, :image, :string
  end
end
