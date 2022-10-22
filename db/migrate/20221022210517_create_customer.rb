class CreateCustomer < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :item
      t.date :item_received
      t.date :item_returned
      t.string :description
      t.integer :technician_id
    end
  end
end
