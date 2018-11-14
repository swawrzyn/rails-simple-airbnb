class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, inclusion: { in: (100..500) }, presence: true
  validates :number_of_guests, inclusion: { in: (1..5) }, presence: true
end
