class ObituariesController < ApplicationController
  def index
    @obituaries = Obituary.all.descending
  end

  def show
    @obituary = Obituary.find(params[:id])
  end

end
