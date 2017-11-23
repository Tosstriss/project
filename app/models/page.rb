class Page < ApplicationRecord
  validates :title, :content, presence: true
  validates :title, length: {minimum: 3 }
end
