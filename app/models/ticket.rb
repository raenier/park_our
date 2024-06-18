class Ticket < ApplicationRecord
  FLAT_RATE = 40
  FLAT_RATE_24HR = 5_000

  belongs_to :vehicle
  belongs_to :parking_space

  enum status: { parked: 1, unparked: 0 }

  def calculate_fee
    continuous_rate = calculate_continuous_rate
    duration = calculate_hour_duration
    flatrate = calculate_flat_rate(duration)
    excess_hour = calculate_excess_hour(duration)

    flatrate + (excess_hour * continuous_rate)
  end

  private

  def calculate_continuous_rate
    20 + (40 * ParkingSpace.sizes[parking_space.size])
  end

  def calculate_hour_duration
    duration = (Time.zone.now - created_at) / 3600
    duration.ceil
  end

  def calculate_flat_rate(duration)
    duration >= 24 ? FLAT_RATE_24HR * (duration / 24) : FLAT_RATE
  end

  def calculate_excess_hour(duration)
    duration >= 24 ? duration % 24 : [duration - 3, 0].max
  end
end
