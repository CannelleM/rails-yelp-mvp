CATEGORY = ['chinese', "italian", "japanese", "french", "belgian"]

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: 'Not a valid category' }
end
