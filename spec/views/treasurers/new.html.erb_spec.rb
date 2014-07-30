require 'spec_helper'

describe "treasurers/new" do
  before(:each) do
    assign(:treasurer, stub_model(Treasurer,
      :name => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new treasurer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", treasurers_path, "post" do
      assert_select "input#treasurer_name[name=?]", "treasurer[name]"
      assert_select "input#treasurer_email[name=?]", "treasurer[email]"
    end
  end
end
