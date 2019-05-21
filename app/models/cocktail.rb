class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, :dependent => :restrict

  validates :name, presence: true
end
