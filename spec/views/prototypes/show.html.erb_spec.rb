require 'spec_helper'

describe "prototypes/show" do
  before(:each) do
    @prototype = assign(:prototype, stub_model(Prototype,
      :name => "Name",
      :project_id => 1,
      :image => "",
      :detail => "Detail"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(//)
    rendered.should match(/Detail/)
  end
end
