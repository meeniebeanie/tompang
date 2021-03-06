class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :country
      t.text :product_description
      t.decimal :price
      t.string :imgurl

      t.timestamps
    end
  end
end
