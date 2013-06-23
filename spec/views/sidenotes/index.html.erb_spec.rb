require 'spec_helper'

describe "sidenotes/index" do
  before(:each) do
    assign(:sidenotes, [
      stub_model(Sidenote,
        :content => "Content"
      ),
      stub_model(Sidenote,
        :content => "Content"
      )
    ])
  end

  it "renders a list of sidenotes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
