require "spec_helper"

describe BlurbsController do
  describe "routing" do

    it "routes to #index" do
      get("/blurbs").should route_to("blurbs#index")
    end

    it "routes to #new" do
      get("/blurbs/new").should route_to("blurbs#new")
    end

    it "routes to #show" do
      get("/blurbs/1").should route_to("blurbs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/blurbs/1/edit").should route_to("blurbs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/blurbs").should route_to("blurbs#create")
    end

    it "routes to #update" do
      put("/blurbs/1").should route_to("blurbs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/blurbs/1").should route_to("blurbs#destroy", :id => "1")
    end

  end
end
