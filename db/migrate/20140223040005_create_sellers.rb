class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :fname
      t.string :lname
      t.integer :balance
    end
  end
end
