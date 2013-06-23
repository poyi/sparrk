require 'spec_helper'

describe "sidenotes/new" do
  before(:each) do
    assign(:sidenote, stub_model(Sidenote,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new sidenote form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sidenotes_path, "post" do
      assert_select "input#sidenote_content[name=?]", "sidenote[content]"
    end
  end
end
