require 'spec_helper'

describe "notes/edit" do
  before(:each) do
    @note = assign(:note, stub_model(Note,
      :name => "MyString",
      :text => "MyString",
      :link => "MyString",
      :image => ""
    ))
  end

  it "renders the edit note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", note_path(@note), "post" do
      assert_select "input#note_name[name=?]", "note[name]"
      assert_select "input#note_text[name=?]", "note[text]"
      assert_select "input#note_link[name=?]", "note[link]"
      assert_select "input#note_image[name=?]", "note[image]"
    end
  end
end
