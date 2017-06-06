class CreateTaskTables < ActiveRecord::Migration[5.1]
  def change
    create_table :task_tables do |t|
      t.integer :product_id
      t.integer :customer_id
      t.integer :count
      t.text :special
      t.text :package
      t.text :shipment

      t.timestamps
    end
  end
end
