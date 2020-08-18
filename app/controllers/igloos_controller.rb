class IgloosController < ApplicationController
# skip_before_action :authenticate_user!, only: [:home :show]

  def index
    @igloos = Igloo.all
  end

  def show
    @igloo = Igloo.find(params[:id])
  end

  def new
    @igloo = Igloo.new
    @user = current_user
  end

  def create
    @igloo = Igloo.new(igloo_params)
    @user = current_user
    @igloo.user = @user
    if @igloo.save
    redirect_to igloo_path(@igloo)
    else
      render :new
    end
  end

  def edit
    @igloo = Igloo.find(params[:id])
    unless current_user == @igloo.user
      redirect_to(@igloo, alert: "Sorry, you cannot edit this igloo")
    end
  end

  def update
    @igloo = Igloo.find(params[:id])
    @igloo.update(igloo_params)
    if @igloo.save
      redirect_to igloo_path(@igloo)
    else
      render :new
    end
  end

  def destroy
    @igloo = Igloo.find(params[:id])
    # @igloo = @booking.igloo
    @igloo.destroy
    redirect_to igloos_path(@igloo)
  end

  private

  def igloo_params
    params.require(:igloo).permit(:name, :address, :description)
  end

end
