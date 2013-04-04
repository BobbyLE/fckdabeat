require 'spec_helper'

describe "aboutus/show" do
  before(:each) do
    @aboutu = assign(:aboutu, stub_model(Aboutu,
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
  end
end
