class Product < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many_attached :images
  has_many :contents
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }


  private 

    def ensure_not_referenced_by_any_line_item
    	unless line_items.empty?
    		errors.add(:base, 'Line Items present')
    		throw :abort
    	end
    end
end
