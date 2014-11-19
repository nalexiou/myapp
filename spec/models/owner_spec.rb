 require 'spec_helper'
 
 describe Owner do
	it "is valid with a name and email" do
		owner = Owner.new(
		name: 'Aaron Sumner',
		email: 'owner@example.com',
		password: 'password')
		expect(owner).to be_valid
	end
	it "is invalid without a name" do
		expect(Owner.new(name: nil)).to have(1).errors_on(:name)
	end
	it "is invalid without a email" do
		expect(Owner.new(email: nil)).to have(2).errors_on(:email)
	end

	it "is invalid with a duplicate email address" do
		Owner.create(name: 'Joe Tester', email: 'tester@example.com',
			password: '12345678')
		
		Owner.create(name: 'John Tester', email: 'tester@example.com',
			password: '12345678')

		expect(Owner.count).to eql(1)
 	end

 end