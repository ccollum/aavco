require "spec_helper"

describe GuidelinesController do
  describe "routing" do

    it "routes to #index" do
      get("/guidelines").should route_to("guidelines#index")
    end

    it "routes to #new" do
      get("/guidelines/new").should route_to("guidelines#new")
    end

    it "routes to #show" do
      get("/guidelines/1").should route_to("guidelines#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guidelines/1/edit").should route_to("guidelines#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guidelines").should route_to("guidelines#create")
    end

    it "routes to #update" do
      put("/guidelines/1").should route_to("guidelines#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guidelines/1").should route_to("guidelines#destroy", :id => "1")
    end

  end
end
