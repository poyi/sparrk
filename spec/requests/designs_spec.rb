require 'spec_helper'

describe "Designs" do
  describe "GET /designs" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get designs_path
      response.status.should be(200)
    end
  end
end
