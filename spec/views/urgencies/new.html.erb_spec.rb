require 'spec_helper'

describe "urgencies/new" do
  before(:each) do
    assign(:urgency, stub_model(Urgency,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new urgency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", urgencies_path, "post" do
      assert_select "input#urgency_name[name=?]", "urgency[name]"
    end
  end
end
