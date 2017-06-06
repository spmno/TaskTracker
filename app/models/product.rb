class Product < ApplicationRecord
  has_one :stock
  has_many :task_table
end
