require 'rails_helper'

RSpec.describe StaffsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # Staff. As you add validations to Staff, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # StaffsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all staffs as @staffs" do
      staff = Staff.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:staffs)).to eq([staff])
    end
  end

  describe "GET show" do
    it "assigns the requested staff as @staff" do
      staff = Staff.create! valid_attributes
      get :show, {:id => staff.to_param}, valid_session
      expect(assigns(:staff)).to eq(staff)
    end
  end

  describe "GET new" do
    it "assigns a new staff as @staff" do
      get :new, {}, valid_session
      expect(assigns(:staff)).to be_a_new(Staff)
    end
  end

  describe "GET edit" do
    it "assigns the requested staff as @staff" do
      staff = Staff.create! valid_attributes
      get :edit, {:id => staff.to_param}, valid_session
      expect(assigns(:staff)).to eq(staff)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Staff" do
        expect {
          post :create, {:staff => valid_attributes}, valid_session
        }.to change(Staff, :count).by(1)
      end

      it "assigns a newly created staff as @staff" do
        post :create, {:staff => valid_attributes}, valid_session
        expect(assigns(:staff)).to be_a(Staff)
        expect(assigns(:staff)).to be_persisted
      end

      it "redirects to the created staff" do
        post :create, {:staff => valid_attributes}, valid_session
        expect(response).to redirect_to(Staff.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved staff as @staff" do
        post :create, {:staff => invalid_attributes}, valid_session
        expect(assigns(:staff)).to be_a_new(Staff)
      end

      it "re-renders the 'new' template" do
        post :create, {:staff => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => new_attributes}, valid_session
        staff.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested staff as @staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => valid_attributes}, valid_session
        expect(assigns(:staff)).to eq(staff)
      end

      it "redirects to the staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => valid_attributes}, valid_session
        expect(response).to redirect_to(staff)
      end
    end

    describe "with invalid params" do
      it "assigns the staff as @staff" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => invalid_attributes}, valid_session
        expect(assigns(:staff)).to eq(staff)
      end

      it "re-renders the 'edit' template" do
        staff = Staff.create! valid_attributes
        put :update, {:id => staff.to_param, :staff => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested staff" do
      staff = Staff.create! valid_attributes
      expect {
        delete :destroy, {:id => staff.to_param}, valid_session
      }.to change(Staff, :count).by(-1)
    end

    it "redirects to the staffs list" do
      staff = Staff.create! valid_attributes
      delete :destroy, {:id => staff.to_param}, valid_session
      expect(response).to redirect_to(staffs_url)
    end
  end

end
