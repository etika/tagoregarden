# require 'rails_helper'

# RSpec.describe "package_details/new", :type => :view do
  # describe 'Pages' do

  #   describe 'Welcome Page' do

  #     before { visit root_path }
  #     response.should render_template("home/coming_soon")

  #     it 'should have public footer present' do
  #       links_are_visible?.should be true
  #     end
  #   # Call this wherever, whenever you need it
  #     def links_are_visible?
  #       find_link('About Us').visible? && find_link('Contact Us').visible && find_link('Help Us').visible?
  #     end
  #   end

  # end 

# end
require 'spec_helper'

RSpec.describe HomeController, :type => :controller do
  let(:user) { FactoryGirl.create(:user) }
 
  describe "Get Coming Soon" do
    it "should response 200" do
      get :coming_soon
      expect(response.status).to eq(200)
    end
 end
end