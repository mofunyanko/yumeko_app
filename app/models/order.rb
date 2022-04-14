class Order < ApplicationRecord
  belongs_to :user
  belongs_to :group
  belongs_to :part
end
