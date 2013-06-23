require 'spec_helper'

describe "prototypes/index" do
  before(:each) do
    assign(:prototypes, [
      stub_model(Prototype,
        :name => "Name",
        :project_id => 1,
        :image => "",
        :detail => "Detail"
      ),
      stub_model(Prototype,
        :name => "Name",
        :project_id => 1,
        :image => "",
        :detail => "Detail"
      )
    ])
  end

  it "renders a list of prototypes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Detail".to_s, :count => 2
  end
end
