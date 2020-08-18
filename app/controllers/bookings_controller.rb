class BookingsController < ApplicationController
    before_action :set_igloo, only: [:create]
    before_action :set_booking, only: [:show, :destroy]

    def index
        @bookings = booking.all
    end

    def new         
        @igloo = Igloo.find(params[:igloo_id])
        @booking = Booking.new
        booking_dates = []
        @igloo.bookings.each do |booking|
        booking_dates << [booking.check_in, booking.check_out]
        end
    end 

    def create
        @booking = Booking.new(booking_params)
        # @booking_user = current_user
        @user = User.find(params[:user_id])
        @booking.user = @user
        if booking.save
            redirect_to booking_path(@booking)
        else
            flash[:alert] = "Please provide valid dates"
            redirect_to igloo_path(@igloo)
        end
    end

    def show
        @booking = Booking.find(params[:id])
        @user = @booking.user
    end

    def destroy
        @booking.destroy
        redirect_to bookings_path
      end

    private 

    def booking_params
        params.require(:booking).permit(:check_in, :check_out, :igloo_id)
    end
end
