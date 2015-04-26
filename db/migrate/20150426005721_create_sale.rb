class CreateSale < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.references :seller, :product
    end
  end
end
