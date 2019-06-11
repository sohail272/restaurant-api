class Api::RestaurantsController < ApiController
  def index
  	restaurants = Restaurant.all
  	if params[:dish_id].present?
  		restaurants = Dish.find(params[:dish_id]).restaurants rescue ""
	  end
  	if restaurants.present?
  		render json: {restaurants: restaurants}, status: 200
  	else
  		render json: {message: "no dish available"}, status: 404
  	end
  end

  def show
  	restaurant = Restaurant.find(params[:id]) rescue ""
  	if params[:dish_id].present?
  		dishes_restaurant = Dish.find(params[:dish_id]).restaurants.map(&:id).include? params[:id].to_i rescue ""
  		if dishes_restaurant.present?
  			render json: {restaurants: restaurant}, status: 200
  		else
  			render json: {message: "no restaurant available"}, status: 404
  		end
  	elsif restaurant.present?
  		render json: {restaurants: restaurant}, status: 200
  	else
  		render json: {message: "no restaurant available"}, status: 404
  	end
  end
end