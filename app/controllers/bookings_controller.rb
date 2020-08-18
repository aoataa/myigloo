class BookingsController < ApplicationController


    def new 
        @user = Users.find(params[:user_id]
        @booking = Booking.new
    end 
    















end
