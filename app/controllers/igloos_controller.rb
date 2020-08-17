class IgloosController < ApplicationController

  def index
    igloos = Igloo.all
  end

end
