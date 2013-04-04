require "spec_helper"

describe AboutusController do
  describe "routing" do

    it "routes to #index" do
      get("/aboutus").should route_to("aboutus#index")
    end

    it "routes to #new" do
      get("/aboutus/new").should route_to("aboutus#new")
    end

    it "routes to #show" do
      get("/aboutus/1").should route_to("aboutus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/aboutus/1/edit").should route_to("aboutus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/aboutus").should route_to("aboutus#create")
    end

    it "routes to #update" do
      put("/aboutus/1").should route_to("aboutus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/aboutus/1").should route_to("aboutus#destroy", :id => "1")
    end

  end
end
