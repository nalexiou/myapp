 require 'spec_helper'
 
 describe Restaurant do
	it "is valid with a name and owner_id" do
		restaurant = Restaurant.new(
		name: 'Aaron Sumner',
		owner_id: '1')
		expect(restaurant).to be_valid
	end
	it "is invalid without a name" do
		expect(Restaurant.new(name: nil)).to have(1).errors_on(:name)
	end
	it "is invalid without a owner_id" do
		expect(Restaurant.new(owner_id: nil)).to have(1).errors_on(:owner_id)
	end

 end
