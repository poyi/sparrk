require "spec_helper"

describe DesignsController do
  describe "routing" do

    it "routes to #index" do
      get("/designs").should route_to("designs#index")
    end

    it "routes to #new" do
      get("/designs/new").should route_to("designs#new")
    end

    it "routes to #show" do
      get("/designs/1").should route_to("designs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/designs/1/edit").should route_to("designs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/designs").should route_to("designs#create")
    end

    it "routes to #update" do
      put("/designs/1").should route_to("designs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/designs/1").should route_to("designs#destroy", :id => "1")
    end

  end
end
