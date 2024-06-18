class Vehicle < ApplicationRecord
  has_many :tickets

  validates :plate, uniqueness: true, presence: true
  validates :size, presence: true

  enum size: %i[small medium large]

  def previous_ticket
    tickets.second_to_last
  end
end
