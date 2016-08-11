require 'rails_helper'

RSpec.describe "schemes/edit", :type => :view do
  before(:each) do
    @scheme = assign(:scheme, Scheme.create!(
      :entry_id => 1,
      :content => "MyText"
    ))
  end

  it "renders the edit scheme form" do
    render

    assert_select "form[action=?][method=?]", scheme_path(@scheme), "post" do

      assert_select "input#scheme_entry_id[name=?]", "scheme[entry_id]"

      assert_select "textarea#scheme_content[name=?]", "scheme[content]"
    end
  end
end
