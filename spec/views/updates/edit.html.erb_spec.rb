require 'rails_helper'

RSpec.describe "updates/edit", :type => :view do
  before(:each) do
    @update = assign(:update, Update.create!(
      :topic => "MyString",
      :details => "MyText"
    ))
  end

  it "renders the edit update form" do
    render

    assert_select "form[action=?][method=?]", update_path(@update), "post" do

      assert_select "input#update_topic[name=?]", "update[topic]"

      assert_select "textarea#update_details[name=?]", "update[details]"
    end
  end
end
