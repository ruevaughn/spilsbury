class GuestbooksController < ApplicationController
  def show
    @guestbook = Guestbook.find(params[:id])
  end
end
