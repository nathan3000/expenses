require 'spec_helper'

describe "treasurers/edit" do
  before(:each) do
    @treasurer = assign(:treasurer, stub_model(Treasurer,
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit treasurer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treasurer_path(@treasurer), "post" do
      assert_select "input#treasurer_name[name=?]", "treasurer[name]"
      assert_select "input#treasurer_email[name=?]", "treasurer[email]"
    end
  end
end
