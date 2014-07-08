require 'rails_helper'

describe Admin::ObituariesController do
  before(:each) do
    sign_in(:admin, create(:admin))
  end

  describe "GET new" do
    it "assigns @obituary" do
      get :new
      expect(assigns(:obituary)).to be_a_new(Obituary)
    end
  end

  describe "GET edit" do
    it "assigns @obituary to the current obituary" do
      obit = create(:obituary)
      get :edit, {id: obit.to_param}
      expect(assigns(:obituary)).to eq obit
    end
  end
end
