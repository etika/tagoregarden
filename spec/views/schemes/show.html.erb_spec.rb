require 'rails_helper'

RSpec.describe "schemes/show", :type => :view do
  before(:each) do
    @scheme = assign(:scheme, Scheme.create!(
      :entry_id => 1,
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
  end
end
