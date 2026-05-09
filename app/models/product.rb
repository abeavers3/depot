class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true

  has_many :line_items

  validates :price, numericality: { greater_than_or_equal_to: 0.01 }

  validates :title, uniqueness: true

  validates :image_url, format: {
    with: /\.(gif|jpg|png)\z/i,
    message: "must be a URL for GIF, JPG, or PNG image"
  }
end
