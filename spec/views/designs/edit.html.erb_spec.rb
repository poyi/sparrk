require 'spec_helper'

describe "designs/edit" do
  before(:each) do
    @design = assign(:design, stub_model(Design,
      :name => "MyString",
      :image => "",
      :project_id => 1
    ))
  end

  it "renders the edit design form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", design_path(@design), "post" do
      assert_select "input#design_name[name=?]", "design[name]"
      assert_select "input#design_image[name=?]", "design[image]"
      assert_select "input#design_project_id[name=?]", "design[project_id]"
    end
  end
end
