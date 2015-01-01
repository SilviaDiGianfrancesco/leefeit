class CreateCosmetics < ActiveRecord::Migration
  def change
    create_table :cosmetics do |t|
      t.string :Product
      t.string :phone
      t.string :website

      t.timestamps null: false
    end
  end
end
