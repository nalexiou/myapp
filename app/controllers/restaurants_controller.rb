class RestaurantsController < ApplicationController
	
	def index
		@restaurant = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end


	def create
			
			@restaurant = Restaurant.new(user_params)
			    if @restaurant.save
			    	redirect_to restaurant_path(@restaurant.id)
	    		else
	      	flash[:alert] = "Something went wrong! Please try again!"

	     	render 'new'
	    end
	end

	def show
	  @restaurant = Restaurant.find(params[:id])
	end


	def update
	  @restaurant = Restaurant.find(params[:id])
	 
	  if @restaurant.update(user_params)
	    redirect_to @restaurant
	  else
	    render 'edit'
	  end
	end


	def edit
  		@restaurant = Restaurant.find(params[:id])
	end

	def destroy
		  @restaurant = Restaurant.find(params[:id])
  		  @restaurant.destroy
  		   redirect_to restaurants_path
	end

	
	private
	  def user_params
	  	params.require(:restaurant).permit(:name, :street_address_1, :street_address_2, :city, :state, :zipcode, :phonenumber, :website)
  	  end

end