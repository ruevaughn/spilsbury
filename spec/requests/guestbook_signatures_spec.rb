require 'rails_helper'

RSpec.describe "GuestbookSignatures", :type => :request do
  describe "GET /guestbook_signatures" do
    it "works! (now write some real specs)" do
      get guestbook_signatures_path
      expect(response.status).to be(200)
    end
  end
end
