require 'spec_helper'

describe "aboutus/edit" do
  before(:each) do
    @aboutu = assign(:aboutu, stub_model(Aboutu,
      :content => "MyString"
    ))
  end

  it "renders the edit aboutu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", aboutu_path(@aboutu), "post" do
      assert_select "input#aboutu_content[name=?]", "aboutu[content]"
    end
  end
end
