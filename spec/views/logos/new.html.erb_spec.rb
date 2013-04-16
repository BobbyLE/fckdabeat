require 'spec_helper'

describe "logos/new" do
  before(:each) do
    assign(:logo, stub_model(Logo).as_new_record)
  end

  it "renders new logo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", logos_path, "post" do
    end
  end
end
