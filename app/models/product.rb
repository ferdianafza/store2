class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many_attached :images
  has_many :contents

  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
