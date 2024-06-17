class Ticket < ApplicationRecord
  belongs_to :vehicle
  belongs_to :parking_space

  enum status: { parked: 1, unparked: 0 }
end
