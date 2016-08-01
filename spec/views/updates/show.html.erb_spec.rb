require 'rails_helper'

RSpec.describe "updates/show", :type => :view do
  before(:each) do
    @update = assign(:update, Update.create!(
      :topic => "Topic",
      :details => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(/MyText/)
  end
end
