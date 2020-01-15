class Comment < ApplicationRecord
  belongs_to :product
  has_many :contents
  belongs_to :user
end
