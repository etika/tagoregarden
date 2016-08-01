require 'rails_helper'

RSpec.describe "updates/new", :type => :view do
  before(:each) do
    assign(:update, Update.new(
      :topic => "MyString",
      :details => "MyText"
    ))
  end

  it "renders new update form" do
    render

    assert_select "form[action=?][method=?]", updates_path, "post" do

      assert_select "input#update_topic[name=?]", "update[topic]"

      assert_select "textarea#update_details[name=?]", "update[details]"
    end
  end
end
