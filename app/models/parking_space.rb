class ParkingSpace < ApplicationRecord
  enum size: %i[small medium large]
  serialize :entrance_distances, type: Array, coder: JSON
end
