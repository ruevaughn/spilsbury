require 'rails_helper'

RSpec.describe "Funerals", :type => :request do
  describe "GET /funerals" do
    it "works! (now write some real specs)" do
      get funerals_path
      expect(response.status).to be(200)
    end
  end
end
