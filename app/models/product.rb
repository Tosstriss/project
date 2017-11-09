class Product < ApplicationRecord
	validates :name, :description, :price, :status, :category, presence: true
	validates :name, length: { minimum: 3 }
	validates :description, length: {maximum: 500}
	validates :price, numericality: true

	belongs_to :category 
end
