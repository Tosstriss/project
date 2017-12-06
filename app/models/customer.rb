class Customer < ApplicationRecord
	validates :name, :address, :province, :postalcode, :email,  presence: true

	belongs_to :province
end
