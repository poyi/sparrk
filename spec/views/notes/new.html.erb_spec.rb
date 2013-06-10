require 'spec_helper'

describe "notes/new" do
  before(:each) do
    assign(:note, stub_model(Note,
      :name => "MyString",
      :text => "MyString",
      :link => "MyString",
      :image => ""
    ).as_new_record)
  end

  it "renders new note form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", notes_path, "post" do
      assert_select "input#note_name[name=?]", "note[name]"
      assert_select "input#note_text[name=?]", "note[text]"
      assert_select "input#note_link[name=?]", "note[link]"
      assert_select "input#note_image[name=?]", "note[image]"
    end
  end
end
