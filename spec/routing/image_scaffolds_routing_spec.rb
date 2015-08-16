require "rails_helper"

RSpec.describe ImageScaffoldsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/image_scaffolds").to route_to("image_scaffolds#index")
    end

    it "routes to #new" do
      expect(:get => "/image_scaffolds/new").to route_to("image_scaffolds#new")
    end

    it "routes to #show" do
      expect(:get => "/image_scaffolds/1").to route_to("image_scaffolds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/image_scaffolds/1/edit").to route_to("image_scaffolds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/image_scaffolds").to route_to("image_scaffolds#create")
    end

    it "routes to #update" do
      expect(:put => "/image_scaffolds/1").to route_to("image_scaffolds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/image_scaffolds/1").to route_to("image_scaffolds#destroy", :id => "1")
    end

  end
end
