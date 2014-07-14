class ObituariesController < ApplicationController
  def index
    if params[:q]
      @obituaries = Obituary.search params[:q]
    else
      @obituaries = Obituary.all.descending.page params[:page]
    end
  end

  def show
    @obituary = Obituary.find(params[:id])
  end
end
