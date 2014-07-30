require 'spec_helper'

describe "Expenses" do

	let(:base_title) { "| CCS Office Apps" }


	describe "Add Expenses" do
		
		it "should have the content 'Expenses'" do
			visit expenses_path
			expect(page).to have_content('Expenses')
		end

		it "should have the right title" do
			visit expenses_path
			expect(page).to have_title("Expenses #{base_title}")
		end

		#Need to fill in more tests here

		it "should have an amount input number field with a placeholder" do
			visit expenses_path
			expect(page).to have_selector("input[type=number][placeholder='00.00']")
			#expect(page).to have_field("", :with => '00.00')
			#expect(page).to have_field("placeholder", :with => "What is it?")
		end
	end


	describe "View Expenses" do

		it "should have the content 'View Expenses'" do
			visit expenses_path
			expect(page).to have_content("View Expenses")
		end

	end
end
