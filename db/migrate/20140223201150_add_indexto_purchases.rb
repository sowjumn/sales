class AddIndextoPurchases < ActiveRecord::Migration
  def change
    add_index :purchases, :product_id
    add_index :purchases, :date_purchased
  end
end
