class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.integer :product_id
      t.date :date_purchased
      t.boolean :refunded
      t.date :date_refunded
    end
  end
end
