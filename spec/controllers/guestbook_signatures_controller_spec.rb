require 'rails_helper'

RSpec.describe GuestbookSignaturesController, :type => :controller do

  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET new" do
    it "assigns a new guestbook_signature as @guestbook_signature" do
      guestbook = create(:guestbook)
      get :new, {guestbook_id: guestbook.id}, valid_session
      expect(assigns(:guestbook_signature)).to be_a_new(GuestbookSignature)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GuestbookSignature" do
        expect {
          post :create, {:guestbook_signature => valid_attributes}, valid_session
        }.to change(GuestbookSignature, :count).by(1)
      end

      it "assigns a newly created guestbook_signature as @guestbook_signature" do
        post :create, {:guestbook_signature => valid_attributes}, valid_session
        expect(assigns(:guestbook_signature)).to be_a(GuestbookSignature)
        expect(assigns(:guestbook_signature)).to be_persisted
      end

      it "redirects to the created guestbook_signature" do
        post :create, {:guestbook_signature => valid_attributes}, valid_session
        expect(response).to redirect_to(GuestbookSignature.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved guestbook_signature as @guestbook_signature" do
        post :create, {:guestbook_signature => invalid_attributes}, valid_session
        expect(assigns(:guestbook_signature)).to be_a_new(GuestbookSignature)
      end

      it "re-renders the 'new' template" do
        post :create, {:guestbook_signature => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

end
