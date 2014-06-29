require "rails_helper"

RSpec.describe GuestbookSignaturesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/guestbook_signatures").to route_to("guestbook_signatures#index")
    end

    it "routes to #new" do
      expect(:get => "/guestbook_signatures/new").to route_to("guestbook_signatures#new")
    end

    it "routes to #show" do
      expect(:get => "/guestbook_signatures/1").to route_to("guestbook_signatures#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/guestbook_signatures/1/edit").to route_to("guestbook_signatures#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/guestbook_signatures").to route_to("guestbook_signatures#create")
    end

    it "routes to #update" do
      expect(:put => "/guestbook_signatures/1").to route_to("guestbook_signatures#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/guestbook_signatures/1").to route_to("guestbook_signatures#destroy", :id => "1")
    end

  end
end
