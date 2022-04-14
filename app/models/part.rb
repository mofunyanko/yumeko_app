class Part < ApplicationRecord
  belongs_to :parts_category
  has_many :orders
end
