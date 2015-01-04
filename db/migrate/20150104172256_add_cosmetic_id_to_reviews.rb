class AddCosmeticIdToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :cosmetic_id, :integer
  end
end
