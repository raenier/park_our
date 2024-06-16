class Vehicle < ApplicationRecord
  has_many :tickets

  validates :plate, uniqueness: true, presence: true
  validates :size, presence: true
end
