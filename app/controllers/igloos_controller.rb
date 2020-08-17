class IgloosController < ApplicationController

  def index
    @igloos = Igloo.all
  end

  def show
    @igloo = Igloo.find(:id)
  end

  def new
    @igloo = Igloo.new
  end

  def create
    @igloo = Igloo.new
    if @igloo.save
      redirect_to igloos_path
    else
      render 'new'
    end
  end
end
