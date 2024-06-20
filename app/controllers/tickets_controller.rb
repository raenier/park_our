class TicketsController < ApplicationController
  def index
    @entrance_count = 3
    @vehicle_sizes = Vehicle.sizes.keys
    @parking_spaces = ParkingSpace.all
  end

  def create
    vehicle = Vehicle.find_or_create_by(plate: params[:plate], size: params[:size])
    parking_space = ParkingSpace.get_nearest_available(params[:entrance_number].to_i, params[:size])
    ticket = Ticket.new(vehicle:, parking_space:)

    unless vehicle.errors.empty? && parking_space && ticket.save
      flash[:alert] = parking_space ? vehicle.errors.full_messages || [] : 'No Available Parking Space'
    end

    redirect_to root_path
  end

  def update
    ticket = Ticket.find params[:id]
    total_fee = ticket.calculate_fee
    ticket.update(status: 'unparked', total_fee:)

    flash[:notice] = "Vehicle: #{ticket.vehicle.plate}, TOTAL FEE: #{total_fee}"
    redirect_to root_path
  end
end
