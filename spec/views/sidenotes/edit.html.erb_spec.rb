require 'spec_helper'

describe "sidenotes/edit" do
  before(:each) do
    @sidenote = assign(:sidenote, stub_model(Sidenote,
      :content => "MyString"
    ))
  end

  it "renders the edit sidenote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sidenote_path(@sidenote), "post" do
      assert_select "input#sidenote_content[name=?]", "sidenote[content]"
    end
  end
end
