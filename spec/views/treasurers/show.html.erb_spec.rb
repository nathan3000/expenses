require 'spec_helper'

describe "treasurers/show" do
  before(:each) do
    @treasurer = assign(:treasurer, stub_model(Treasurer,
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
  end
end
