class Api::DishesController < ApiController
  def index
  	dishes = Dish.all
  	if params[:restaurant_id].present?
  		dishes = Restaurant.find(params[:restaurant_id]).dishes rescue ""
	  end
	  if dishes.present?
  		render json: {dishes: dishes}, status: 200
  	else
  		render json: {message: "no dish available"}, status: 404
  	end
  end

  def show
  	dish = Dish.find(params[:id]) rescue ""
  	if params[:restaurant_id].present?
  		restaurants_dish = Restaurant.find(params[:restaurant_id]).dishes.map(&:id).include? params[:id].to_i rescue ""
  		if restaurants_dish.present?
  			render json: {dishes: dish}, status: 200
  		else
  			render json: {message: "no dish available"}, status: 404
  		end
  	elsif dish.present?
  		render json: {dishes: dish}, status: 200
  	else
  		render json: {message: "no dish available"}, status: 404
  	end
  end
end