class Province < ApplicationRecord
  validates :name, :gst, :pst, presence: true
  validates :pst, :gst, numericality: true

  has_many :users
end
