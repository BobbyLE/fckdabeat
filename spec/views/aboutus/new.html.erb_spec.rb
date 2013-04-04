require 'spec_helper'

describe "aboutus/new" do
  before(:each) do
    assign(:aboutu, stub_model(Aboutu,
      :content => "MyString"
    ).as_new_record)
  end

  it "renders new aboutu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aboutus_path, "post" do
      assert_select "input#aboutu_content[name=?]", "aboutu[content]"
    end
  end
end
