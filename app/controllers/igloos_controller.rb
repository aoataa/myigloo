class IgloosController < ApplicationController

  def index
    @igloos = Igloo.all
  end

  def show

    @igloo = Igloo.find(params[:id])
  end

  def new
    @igloo = Igloo.new
  end

  def create
    @igloo = Igloo.new(igloo_params)
    @igloo.user = current_user
    @igloo.save
    redirect_to igloo_path(@igloo)
  end

  def edit
    @igloo = Igloo.find(params[:id])
  end

  def update
    @igloo = Igloo.find(params[:id])
    @igloo.update(igloo_params)
  end

  private

  def igloo_params
    params.require(:igloo).permit(:name, :address, :description)
  end

end
