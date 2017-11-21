class Product < ApplicationRecord
	validates :name, :description, :price, :status, :category, presence: true
	validates :name, length: { minimum: 3 }
	validates :description, length: {maximum: 500}
	validates :price, numericality: true

	has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
	#validates_attachment :image, :presence => true,
  #	:content_type => { :content_type => "image/jpg" },
  #	:size => { :in => 0..100.kilobytes }


	belongs_to :category
end
