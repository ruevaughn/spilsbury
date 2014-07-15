require 'rails_helper'

describe Admin::FuneralsController do
  before(:each) do
    sign_in(:admin, create(:admin))
  end
  let(:valid_attributes) {
    attributes_for(:funeral)
  }

  let(:invalid_attributes) {
    attributes_for(:funeral, service_begins: nil)
  }

  let(:valid_session) { {} }

  describe "GET new" do
    it "assigns a new funeral as @funeral" do
      get :new, {}, valid_session
      expect(assigns(:funeral)).to be_a_new(Funeral)
    end
  end

  describe "GET edit" do
    it "assigns the requested funeral as @funeral" do
      funeral = Funeral.create! valid_attributes
      get :edit, {:id => funeral.to_param}, valid_session
      expect(assigns(:funeral)).to eq(funeral)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Funeral" do
        expect {
          post :create, {:funeral => valid_attributes}, valid_session
        }.to change(Funeral, :count).by(1)
      end

      it "assigns a newly created funeral as @funeral" do
        post :create, {:funeral => valid_attributes}, valid_session
        expect(assigns(:funeral)).to be_a(Funeral)
        expect(assigns(:funeral)).to be_persisted
      end

      it "redirects to the created funeral" do
        post :create, {:funeral => valid_attributes}, valid_session
        expect(response).to redirect_to(Funeral.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved funeral as @funeral" do
        post :create, {:funeral => invalid_attributes}, valid_session
        expect(assigns(:funeral)).to be_a_new(Funeral)
      end

      it "re-renders the 'new' template" do
        post :create, {:funeral => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        { location: 'string' }
      }

      it "updates the requested funeral" do
        funeral = Funeral.create! valid_attributes
        put :update, {:id => funeral.to_param, :funeral => new_attributes}, valid_session
        funeral.reload
        expect(funeral.location).to eq(new_attributes[:location])
      end

      it "assigns the requested funeral as @funeral" do
        funeral = Funeral.create! valid_attributes
        put :update, {:id => funeral.to_param, :funeral => valid_attributes}, valid_session
        expect(assigns(:funeral)).to eq(funeral)
      end

      it "redirects to the funeral" do
        funeral = Funeral.create! valid_attributes
        put :update, {:id => funeral.to_param, :funeral => valid_attributes}, valid_session
        expect(response).to redirect_to(funeral)
      end
    end

    describe "with invalid params" do
      it "assigns the funeral as @funeral" do
        funeral = Funeral.create! valid_attributes
        put :update, {:id => funeral.to_param, :funeral => invalid_attributes}, valid_session
        expect(assigns(:funeral)).to eq(funeral)
      end

      it "re-renders the 'edit' template" do
        funeral = Funeral.create! valid_attributes
        put :update, {:id => funeral.to_param, :funeral => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested funeral" do
      funeral = Funeral.create! valid_attributes
      expect {
        delete :destroy, {:id => funeral.to_param}, valid_session
      }.to change(Funeral, :count).by(-1)
    end

    it "redirects to the funerals list" do
      funeral = Funeral.create! valid_attributes
      delete :destroy, {:id => funeral.to_param}, valid_session
      expect(response).to redirect_to(funerals_url)
    end
  end

end
