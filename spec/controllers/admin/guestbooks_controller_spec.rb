require 'rails_helper'

describe Admin::GuestbooksController do
  before(:each) do
    sign_in :admin, create(:admin)
  end

  let(:valid_attributes) {
    attributes_for(:guestbook, obituary_id: 1)
  }

  let(:invalid_attributes) {
    attributes_for(:guestbook, obituary_id: nil)
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

  describe "GET new" do
    it "assigns a new guestbook as @guestbook" do
      sign_in(:admin, create(:admin))
      get :new, {}, valid_session
      expect(assigns(:guestbook)).to be_a_new(Guestbook)
    end
  end

  describe "GET edit" do
    it "assigns the requested guestbook as @guestbook" do
      guestbook = Guestbook.create! valid_attributes
      get :edit, {:id => guestbook.to_param}, valid_session
      expect(assigns(:guestbook)).to eq(guestbook)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Guestbook" do
        expect {
          post :create, {:guestbook => valid_attributes}, valid_session
        }.to change(Guestbook, :count).by(1)
      end

      it "assigns a newly created guestbook as @guestbook" do
        post :create, {:guestbook => valid_attributes}, valid_session
        expect(assigns(:guestbook)).to be_a(Guestbook)
        expect(assigns(:guestbook)).to be_persisted
      end

      it "redirects to the created guestbook" do
        post :create, {:guestbook => valid_attributes}, valid_session
        expect(response).to redirect_to(Guestbook.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved guestbook as @guestbook" do
        post :create, {:guestbook => invalid_attributes}, valid_session
        expect(assigns(:guestbook)).to be_a_new(Guestbook)
      end

      it "re-renders the 'new' template" do
        post :create, {:guestbook => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { obituary_id: 2 }
      }

      it "updates the requested guestbook" do
        guestbook = Guestbook.create! valid_attributes
        put :update, {:id => guestbook.to_param, :guestbook => new_attributes}, valid_session
        guestbook.reload
        expect(guestbook.obituary_id).to eq 2
      end

      it "assigns the requested guestbook as @guestbook" do
        guestbook = Guestbook.create! valid_attributes
        put :update, {:id => guestbook.to_param, :guestbook => valid_attributes}, valid_session
        expect(assigns(:guestbook)).to eq(guestbook)
      end

      it "redirects to the guestbook" do
        guestbook = Guestbook.create! valid_attributes
        put :update, {:id => guestbook.to_param, :guestbook => valid_attributes}, valid_session
        expect(response).to redirect_to(guestbook)
      end
    end

    describe "with invalid params" do
      it "assigns the guestbook as @guestbook" do
        guestbook = Guestbook.create! valid_attributes
        put :update, {:id => guestbook.to_param, :guestbook => invalid_attributes}, valid_session
        expect(assigns(:guestbook)).to eq(guestbook)
      end

      it "re-renders the 'edit' template" do
        guestbook = Guestbook.create! valid_attributes
        put :update, {:id => guestbook.to_param, :guestbook => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested guestbook" do
      guestbook = Guestbook.create! valid_attributes
      expect {
        delete :destroy, {:id => guestbook.to_param}, valid_session
      }.to change(Guestbook, :count).by(-1)
    end

    it "redirects to the guestbooks list" do
      guestbook = Guestbook.create! valid_attributes
      delete :destroy, {:id => guestbook.to_param}, valid_session
      expect(response).to redirect_to(admin_guestbooks_url)
    end
  end

end
