require 'spec_helper'

describe "designs/show" do
  before(:each) do
    @design = assign(:design, stub_model(Design,
      :name => "Name",
      :image => "",
      :project_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
