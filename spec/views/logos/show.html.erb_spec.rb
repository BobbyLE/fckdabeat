require 'spec_helper'

describe "logos/show" do
  before(:each) do
    @logo = assign(:logo, stub_model(Logo))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
