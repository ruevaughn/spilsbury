require 'rails_helper'

describe Admin::ObituariesController do
  describe "GET new" do
    it "assigns @obituary" do
      get :new
      expect(assigns(:obituary)).to eq Obituary.new
    end
  end
end
