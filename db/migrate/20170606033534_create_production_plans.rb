class CreateProductionPlans < ActiveRecord::Migration[5.1]
  def change
    create_table :production_plans do |t|

      t.timestamps
    end
  end
end
