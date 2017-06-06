json.extract! task_table, :id, :product_id, :customer_id, :count, :special, :package, :shipment, :created_at, :updated_at
json.url task_table_url(task_table, format: :json)
