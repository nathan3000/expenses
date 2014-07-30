require 'spec_helper'

describe "treasurers/index" do
  before(:each) do
    assign(:treasurers, [
      stub_model(Treasurer,
        :name => "Name",
        :email => "Email"
      ),
      stub_model(Treasurer,
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of treasurers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
