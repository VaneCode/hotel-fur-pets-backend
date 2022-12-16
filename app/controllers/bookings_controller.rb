class BookingsController < ApplicationController
  before_action :authenticate_user!

  # GET /bookings
  def index
    render json: current_user.bookings.all
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    if @booking.save!
      render json: { message: 'booking created' }, status: :created
    else
      render json: { error: 'Unable to create booking' }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking)
      .permit(:checking_in, :checking_out, :hotel_id, :animal_name, :animal_type)
      .with_defaults(user_id: current_user.id)
  end
end
