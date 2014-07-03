require "rails_helper"

RSpec.describe FuneralsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/funerals").to route_to("funerals#index")
    end

    it "routes to #new" do
      expect(:get => "/funerals/new").to route_to("funerals#new")
    end

    it "routes to #show" do
      expect(:get => "/funerals/1").to route_to("funerals#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/funerals/1/edit").to route_to("funerals#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/funerals").to route_to("funerals#create")
    end

    it "routes to #update" do
      expect(:put => "/funerals/1").to route_to("funerals#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/funerals/1").to route_to("funerals#destroy", :id => "1")
    end

  end
end
