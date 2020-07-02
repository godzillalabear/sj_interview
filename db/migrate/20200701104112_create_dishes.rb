class CreateDishes < ActiveRecord::Migration[6.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :photo
      t.integer :price
      t.integer :discount
      t.references :menu

      t.timestamps
    end
  end
end
