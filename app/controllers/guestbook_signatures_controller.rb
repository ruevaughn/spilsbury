class GuestbookSignaturesController < ApplicationController
  before_action :set_guestbook_signature, only: [:show, :edit, :update, :destroy]

  # GET /guestbook_signatures/new
  def new
    @guestbook_signature = GuestbookSignature.new
  end

  # POST /guestbook_signatures
  # POST /guestbook_signatures.json
  def create
    @guestbook = Guestbook.find(params[:guestbook_id])
    @guestbook.guestbook_signatures.build(guestbook_signature_params)
    # @guestbook_signature = GuestbookSignature.new(guestbook_signature_params)

    respond_to do |format|
      if @guestbook.save
        format.html { redirect_to @guestbook, notice: 'Guestbook signature was successfully created.' }
        format.json { render :show, status: :created, location: @guestbook }
      else
        format.html { render :new }
        format.json { render json: @guestbook.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guestbook_signature
      @guestbook_signature = GuestbookSignature.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guestbook_signature_params
      params.require(:guestbook_signature).permit(:guestbook_id, :name, :message)
    end
end
