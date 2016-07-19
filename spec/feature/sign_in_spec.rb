require 'rails_helper'
RSpec.feature "Sign IN", :type => :feature do

#   scenario "User creates a new widget" do
#     visit "/widgets/new"

#     fill_in "Name", :with => "My Widget"
#     click_button "Create Widget"
#     expect(page).to have_text("Widget was successfully created.")
#   end
# end
    # User.make(:email => 'user@example.com', :password => 'password')
  let(:user) { FactoryGirl.create(:user) }

describe "the signin process",:js => true do


  it "signs me in" do
    visit new_user_session_path
    within("#new_user") do
      fill_in 'Email', :with => "etikaahuja@gmail.com"
      fill_in 'Password', :with => "password"
       # fill_in 'session[email]', with: user.email
    # fill_in 'session[password]', with: user.password
  # find('input[name="commit"]').click
     find('#log_in').click
          # click_on('Log in')

    end
        # expect(page).to have_content 'Logout'

              expect(page.current_path).to eq home_path


    # click ('Log in')
    # expect(page).to have_content 'Logout'
  end
end
end