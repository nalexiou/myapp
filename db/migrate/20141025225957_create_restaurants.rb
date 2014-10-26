class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
    	t.string :name
    	t.string :street_address_1
    	t.string :street_address_2
    	t.string :city
    	t.string :state
    	t.string :zipcode
    	t.string :phone_number
    	t.string :website
    	t.datetime :creation_date
    	t.timestamps
    end
  end
end
