class IgloosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_igloo, only: [:show, :edit, :update, :destroy]

  def index
    @igloos = policy_scope(Igloo)
  end

  def show
    @igloo = Igloo.find(params[:id])
  end

  def new
    @igloo = Igloo.new
    @user = current_user
    authorize @igloo
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
    authorize @igloo
  end

  def edit
  end

  def update
      @igloo.update(igloo_params)
    if @igloo.update(igloo_params)
      redirect_to igloos_path(@igloo)
    else
      render :new
    end

  end

  def destroy

    # @igloo = @booking.igloo
    @igloo.destroy
     redirect_to igloos_path(@igloo)

  end

  private

  def set_igloo
    @igloo = Igloo.find(params[:id])
    authorize @igloo
  end

  def igloo_params
    params.require(:igloo).permit(:name, :address, :description)
  end

end
