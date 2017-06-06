class AddStartTimeColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :production_plans, :name, :string
    add_column :production_plans, :start_time, :date_time
    add_column :production_plans, :shipment_time, :date_time
  end
end
