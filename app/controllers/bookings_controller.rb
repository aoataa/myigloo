class BookingsController < ApplicationController
    
    def index
        @bookings = booking.all
    end

    def new         
        @igloo = Igloo.find(params[:igloo_id]
        @booking = Booking.new
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

    private 

    def booking_params
        params.require(:booking).permit(:check_in, :check_out, :igloo_id)
    end
end
