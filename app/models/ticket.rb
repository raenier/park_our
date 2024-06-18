class Ticket < ApplicationRecord
  FLAT_RATE = 40

  belongs_to :vehicle
  belongs_to :parking_space

  enum status: { parked: 1, unparked: 0 }

  def calculate_fee
    continuous_rate = calculate_continuous_rate
    duration = calculate_hour_duration

    return FLAT_RATE if duration <= 3

    excess = duration - 3
    FLAT_RATE + (excess * continuous_rate)
  end

  private

  def calculate_continuous_rate
    20 + (40 * ParkingSpace.sizes[parking_space.size])
  end

  def calculate_hour_duration
    duration = (Time.zone.now - created_at) / 3600
    duration.ceil
  end
end
