class Category < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }
end
