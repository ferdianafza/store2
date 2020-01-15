class Content < ApplicationRecord
  belongs_to :comment
  belongs_to :product
end
