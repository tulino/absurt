class CreateJoinTableProductsCards < ActiveRecord::Migration
  def change
    create_join_table :products, :cards do |t|
      t.index [:product_id, :card_id]
      t.index [:card_id, :product_id]
    end
  end
end
