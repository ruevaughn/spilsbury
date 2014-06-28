class ObituariesController < ApplicationController
  def index
    @obituaries = Obituary.all
  end

  def show
  end

end
