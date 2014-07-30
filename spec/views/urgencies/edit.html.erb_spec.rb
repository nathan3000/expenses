require 'spec_helper'

describe "urgencies/edit" do
  before(:each) do
    @urgency = assign(:urgency, stub_model(Urgency,
      :name => "MyString"
    ))
  end

  it "renders the edit urgency form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", urgency_path(@urgency), "post" do
      assert_select "input#urgency_name[name=?]", "urgency[name]"
    end
  end
end
