class FuneralsController < ApplicationController
  def index
    @funerals = Funeral.all
  end

  def show
    @funeral = Funeral.find(params[:id])
  end
end
