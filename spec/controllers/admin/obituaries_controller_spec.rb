require 'rails_helper'

describe Admin::ObituariesController do
  describe "GET new" do
    it "assigns @obituary" do
      get :new
      expect(assigns(:obituary)).to eq Obituary.new
    end
  end

  describe "GET edit" do
    it "assigns @obituary to the current obituary" do
      obit = create(:obituary)
      get :edit, params: {id: obit.id}
      expect(assigns(:obituary)).to eq obit
    end
  end
end
