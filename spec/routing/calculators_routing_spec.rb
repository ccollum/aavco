require "spec_helper"

describe CalculatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/calculators").should route_to("calculators#index")
    end

    it "routes to #new" do
      get("/calculators/new").should route_to("calculators#new")
    end

    it "routes to #show" do
      get("/calculators/1").should route_to("calculators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/calculators/1/edit").should route_to("calculators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/calculators").should route_to("calculators#create")
    end

    it "routes to #update" do
      put("/calculators/1").should route_to("calculators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/calculators/1").should route_to("calculators#destroy", :id => "1")
    end

  end
end
