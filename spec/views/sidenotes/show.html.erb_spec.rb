require 'spec_helper'

describe "sidenotes/show" do
  before(:each) do
    @sidenote = assign(:sidenote, stub_model(Sidenote,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
