class ParkingSpace < ApplicationRecord
  enum size: %i[small medium large]
  serialize :entrance_distances, type: Array, coder: JSON
  has_many :tickets

  scope :active_spaces, -> { joins(:tickets).where(tickets: { status: 'parked' }).distinct }
  scope :available_spaces_by_size, ->(size) { where(size:).where.not(id: active_spaces.ids) }

  def self.get_nearest_available(entrance_number, size)
    (sizes[size]..sizes.values.last).each do |size_val|
      available_spaces = available_spaces_by_size(size_val)
      next if available_spaces.empty?

      return available_spaces.min_by { |space| space.entrance_distances[entrance_number - 1] }
    end

    false
  end
end
