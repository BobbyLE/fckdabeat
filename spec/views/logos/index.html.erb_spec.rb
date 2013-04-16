require 'spec_helper'

describe "logos/index" do
  before(:each) do
    assign(:logos, [
      stub_model(Logo),
      stub_model(Logo)
    ])
  end

  it "renders a list of logos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
