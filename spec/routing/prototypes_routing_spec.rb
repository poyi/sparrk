require "spec_helper"

describe PrototypesController do
  describe "routing" do

    it "routes to #index" do
      get("/prototypes").should route_to("prototypes#index")
    end

    it "routes to #new" do
      get("/prototypes/new").should route_to("prototypes#new")
    end

    it "routes to #show" do
      get("/prototypes/1").should route_to("prototypes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prototypes/1/edit").should route_to("prototypes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prototypes").should route_to("prototypes#create")
    end

    it "routes to #update" do
      put("/prototypes/1").should route_to("prototypes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prototypes/1").should route_to("prototypes#destroy", :id => "1")
    end

  end
end
