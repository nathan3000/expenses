require 'spec_helper'

describe "urgencies/index" do
  before(:each) do
    assign(:urgencies, [
      stub_model(Urgency,
        :name => "Name"
      ),
      stub_model(Urgency,
        :name => "Name"
      )
    ])
  end

  it "renders a list of urgencies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
