class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :set_owner, only: [:show, :edit]
  before_action :authenticate_owner!, except: [:index, :show]
  before_action :validate_owner, only: [:edit, :update, :destroy]


	def index
		@restaurant = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end


	def create
			
		@restaurant = current_owner.restaurants.new(user_params)
	    if @restaurant.save
	    	redirect_to restaurant_path(@restaurant.id)
		else
  			flash[:alert] = "Something went wrong! Please try again!"

 			render 'new'
		end
	end

	def show

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

	end

	def destroy
  		  @restaurant.destroy
  		   redirect_to restaurants_path
	end

	
	private

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end

    def set_owner
      @owner = Owner.find(@restaurant.owner_id)
    end

  	def validate_owner #might need to pass id and current_user
    if current_owner.id == @restaurant.owner_id
      return true
    else
        flash[:danger] = "Please edit your own restaurants!"
          redirect_to(root_path)
    end
  end
	  def user_params
	  	params.require(:restaurant).permit(:name, :street_address_1, :street_address_2, :city, :state, :zipcode, :phonenumber, :website)
  	  end

end