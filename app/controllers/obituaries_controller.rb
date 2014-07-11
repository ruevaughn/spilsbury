class ObituariesController < ApplicationController
  def index
    @obituaries = Obituary.all.descending.page params[:page]
  end

  def show
    @obituary = Obituary.find(params[:id])
  end

end
