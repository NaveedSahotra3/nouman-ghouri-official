class PortfolioItem < ApplicationRecord
  validates :title, :category, :thumbnail, :image, presence: true
end
