require 'rails_helper'

RSpec.describe "schemes/new", :type => :view do
  before(:each) do
    assign(:scheme, Scheme.new(
      :entry_id => 1,
      :content => "MyText"
    ))
  end

  it "renders new scheme form" do
    render

    assert_select "form[action=?][method=?]", schemes_path, "post" do

      assert_select "input#scheme_entry_id[name=?]", "scheme[entry_id]"

      assert_select "textarea#scheme_content[name=?]", "scheme[content]"
    end
  end
end
