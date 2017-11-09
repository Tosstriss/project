class Customer < ApplicationRecord
	validates :name, :country, :postalcode, :email, presence: true
end
