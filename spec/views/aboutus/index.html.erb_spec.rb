require 'spec_helper'

describe "aboutus/index" do
  before(:each) do
    assign(:aboutus, [
      stub_model(Aboutu,
        :content => "Content"
      ),
      stub_model(Aboutu,
        :content => "Content"
      )
    ])
  end

  it "renders a list of aboutus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
