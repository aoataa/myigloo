class BookingsController < ApplicationController
  before_action :skip_authorization
  before_action :set_igloo, only: [:create]
  before_action :set_booking, only: [:show, :destroy]

  def index
      @bookings = Booking.all

  end

  def new
      @igloo = Igloo.find(params[:igloo_id])
      @booking = Booking.new
      booking_dates = []
      @igloo.bookings.each do |booking|
      booking_dates << [booking.check_in, booking.check_out]
      authorize @booking
      authorize @igloo
      end
  end

  def create
      @booking = Booking.new(booking_params)
      @igloo = Igloo.find(params[:igloo_id])
      @booking.igloo = @igloo
      @booking.user = current_user
      if @booking.save
          redirect_to igloo_path(@igloo)
      else
          flash[:alert] = "Please provide valid dates"
          redirect_to igloo_path(@igloo)
      end
  end

  def show
      @booking = Booking.find(params[:id])
      @user = @booking.user
      authorize @booking
  end

  def destroy
      @booking.destroy
      redirect_to bookings_path
      authorize @booking
    end

  private

  def set_igloo
    @igloo = Igloo.find(params[:igloo_id])
  end

  def booking_params
      params.require(:booking).permit(:check_in, :check_out, :igloo_id)
  end
end
