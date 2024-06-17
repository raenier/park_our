class Ticket < ApplicationRecord
  belongs_to :vehicle

  enum status: { parked: 1, unparked: 0 }
end
