require 'rails_helper'

RSpec.describe "schemes/index", :type => :view do
  before(:each) do
    assign(:schemes, [
      Scheme.create!(
        :entry_id => 1,
        :content => "MyText"
      ),
      Scheme.create!(
        :entry_id => 1,
        :content => "MyText"
      )
    ])
  end

  it "renders a list of schemes" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
