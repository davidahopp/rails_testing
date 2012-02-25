class CreateOrderedProducts < ActiveRecord::Migration
  def self.up
    create_table :ordered_products do |t|

      t.integer :order_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :ordered_products
  end
end
