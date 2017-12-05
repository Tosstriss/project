class Customer < ApplicationRecord
	validates :name, :address, :province, :postalcode, :email,  presence: true
end
