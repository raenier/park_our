# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#

[
  %w[THS123 small],
  %w[LKS325 medium],
  %w[NAS532 large],
  %w[WCS987 small]
].each do |plate, size|
  Vehicle.create(plate:, size:)
end

('A'..'Q').each do |letter|
  ParkingSpace.create(
    name: letter,
    size: ParkingSpace.sizes.values.sample,
    entrance_distances: 3.times.reduce([]) { |acc| acc << rand(1..20) }
  )
end
