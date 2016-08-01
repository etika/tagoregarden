require 'rails_helper'

RSpec.describe "updates/index", :type => :view do
  before(:each) do
    assign(:updates, [
      Update.create!(
        :topic => "Topic",
        :details => "MyText"
      ),
      Update.create!(
        :topic => "Topic",
        :details => "MyText"
      )
    ])
  end

  it "renders a list of updates" do
    render
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
