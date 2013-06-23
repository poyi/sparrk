require "spec_helper"

describe SidenotesController do
  describe "routing" do

    it "routes to #index" do
      get("/sidenotes").should route_to("sidenotes#index")
    end

    it "routes to #new" do
      get("/sidenotes/new").should route_to("sidenotes#new")
    end

    it "routes to #show" do
      get("/sidenotes/1").should route_to("sidenotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sidenotes/1/edit").should route_to("sidenotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sidenotes").should route_to("sidenotes#create")
    end

    it "routes to #update" do
      put("/sidenotes/1").should route_to("sidenotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sidenotes/1").should route_to("sidenotes#destroy", :id => "1")
    end

  end
end
