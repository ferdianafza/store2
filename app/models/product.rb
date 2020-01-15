class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_one_attached :image
  has_many :contents

  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
end
