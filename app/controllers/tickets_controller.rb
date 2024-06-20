class TicketsController < ApplicationController
  def index
    @entrance_count = 3
    @vehicle_sizes = Vehicle.sizes.keys
  end

  def create
    vehicle = Vehicle.find_or_create_by(plate: params[:plate], size: params[:size])
    parking_space = ParkingSpace.get_nearest_available(params[:entrance_number].to_i, params[:size])
    ticket = Ticket.new(vehicle:, parking_space:)

    if ticket.save
      redirect_to root_path
    else
      render :index, status: :unprocessable_entity
    end
  end
end
