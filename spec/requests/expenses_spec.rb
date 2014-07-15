require 'spec_helper'

describe "Expenses" do
  describe "Add Expenses" do
  	
  	it "should have the content 'Expenses'" do
  		visit '/expenses'
  		expect(page).to have_content('Expenses')
  	end

  	it "should have the right title" do
  		visit '/expenses'
  		expect(page).to have_title('Expenses | CCS Office Apps')
  	end
  	
  end
end
