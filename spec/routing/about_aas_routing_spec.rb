require "spec_helper"

describe AboutAasController do
  describe "routing" do

    it "routes to #index" do
      get("/about_aas").should route_to("about_aas#index")
    end

    it "routes to #new" do
      get("/about_aas/new").should route_to("about_aas#new")
    end

    it "routes to #show" do
      get("/about_aas/1").should route_to("about_aas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/about_aas/1/edit").should route_to("about_aas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/about_aas").should route_to("about_aas#create")
    end

    it "routes to #update" do
      put("/about_aas/1").should route_to("about_aas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/about_aas/1").should route_to("about_aas#destroy", :id => "1")
    end

  end
end
