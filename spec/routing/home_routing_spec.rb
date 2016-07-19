require "rails_helper"

RSpec.describe HomeController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/map-display").to route_to("home#map_display")
    end
  end
end
