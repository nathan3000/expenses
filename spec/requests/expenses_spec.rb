require 'spec_helper'

describe "Expenses" do

	let(:base_title) { "| CCS Office Apps" }


	describe "Add Expenses" do
		
		it "should have the content 'Expenses'" do
			visit '/expenses'
			expect(page).to have_content('Expenses')
		end

		it "should have the right title" do
			visit '/expenses'
			expect(page).to have_title("Expenses #{base_title}")
		end

	end
end
