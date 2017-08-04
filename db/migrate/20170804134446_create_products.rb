class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :brand, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :price
      t.timestamps
    end
  end
end
