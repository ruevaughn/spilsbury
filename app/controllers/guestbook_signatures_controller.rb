class GuestbookSignaturesController < ApplicationController
  before_action :set_guestbook_signature, only: [:show, :edit, :update, :destroy]

  # GET /guestbook_signatures
  # GET /guestbook_signatures.json
  def index
    @guestbook_signatures = GuestbookSignature.all
  end

  # GET /guestbook_signatures/1
  # GET /guestbook_signatures/1.json
  def show
  end

  # GET /guestbook_signatures/new
  def new
    @guestbook_signature = GuestbookSignature.new
  end

  # GET /guestbook_signatures/1/edit
  def edit
  end

  # POST /guestbook_signatures
  # POST /guestbook_signatures.json
  def create
    @guestbook_signature = GuestbookSignature.new(guestbook_signature_params)

    respond_to do |format|
      if @guestbook_signature.save
        format.html { redirect_to @guestbook_signature, notice: 'Guestbook signature was successfully created.' }
        format.json { render :show, status: :created, location: @guestbook_signature }
      else
        format.html { render :new }
        format.json { render json: @guestbook_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guestbook_signatures/1
  # PATCH/PUT /guestbook_signatures/1.json
  def update
    respond_to do |format|
      if @guestbook_signature.update(guestbook_signature_params)
        format.html { redirect_to @guestbook_signature, notice: 'Guestbook signature was successfully updated.' }
        format.json { render :show, status: :ok, location: @guestbook_signature }
      else
        format.html { render :edit }
        format.json { render json: @guestbook_signature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guestbook_signatures/1
  # DELETE /guestbook_signatures/1.json
  def destroy
    @guestbook_signature.destroy
    respond_to do |format|
      format.html { redirect_to guestbook_signatures_url, notice: 'Guestbook signature was successfully destroyed.' }
      format.json { head :no_content }
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
