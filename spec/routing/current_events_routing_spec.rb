require "spec_helper"

describe CurrentEventsController do
  describe "routing" do

    it "routes to #index" do
      get("/current_events").should route_to("current_events#index")
    end

    it "routes to #new" do
      get("/current_events/new").should route_to("current_events#new")
    end

    it "routes to #show" do
      get("/current_events/1").should route_to("current_events#show", :id => "1")
    end

    it "routes to #edit" do
      get("/current_events/1/edit").should route_to("current_events#edit", :id => "1")
    end

    it "routes to #create" do
      post("/current_events").should route_to("current_events#create")
    end

    it "routes to #update" do
      put("/current_events/1").should route_to("current_events#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/current_events/1").should route_to("current_events#destroy", :id => "1")
    end

  end
end
