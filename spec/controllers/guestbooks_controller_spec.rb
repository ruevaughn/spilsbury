require 'rails_helper'

RSpec.describe GuestbooksController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all guestbooks as @guestbooks" do
      guestbook = Guestbook.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:guestbooks)).to eq([guestbook])
    end
  end

  describe "GET show" do
    it "assigns the requested guestbook as @guestbook" do
      guestbook = Guestbook.create! valid_attributes
      get :show, {:id => guestbook.to_param}, valid_session
      expect(assigns(:guestbook)).to eq(guestbook)
    end
  end
end
