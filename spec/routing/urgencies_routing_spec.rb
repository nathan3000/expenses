require "spec_helper"

describe UrgenciesController do
  describe "routing" do

    it "routes to #index" do
      get("/urgencies").should route_to("urgencies#index")
    end

    it "routes to #new" do
      get("/urgencies/new").should route_to("urgencies#new")
    end

    it "routes to #show" do
      get("/urgencies/1").should route_to("urgencies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/urgencies/1/edit").should route_to("urgencies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/urgencies").should route_to("urgencies#create")
    end

    it "routes to #update" do
      put("/urgencies/1").should route_to("urgencies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/urgencies/1").should route_to("urgencies#destroy", :id => "1")
    end

  end
end
