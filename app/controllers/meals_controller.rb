class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  def index
    date = Date.parse()

    @meals = Meal.where(created_at: date.midnight..date.end_of_day)

    render json: @meals
  end

  def date

    
    date = Time.at((params[:date].to_i)/(1000))
    
 
    @meals = Meal.where(created_at: date.all_day, user_id: @user.id)
  
    render json: MealSerializer.new(@meals).to_serialized_json


  end

  # GET /meals/1
  def show
    render json: @meal
  end

  # POST /meals
  def create
    
    @meal = Meal.new(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  def update
    if @meal.update(meal_params)
      render json: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  def destroy
    @meal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = Meal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meal_params
      params.require(:meal).permit(:user_id, :calorie_goal, :fat_goal, :carb_goal, :protein_goal, :carbs_consumed, :fat_consumed, :protein_consumed, :calories_consumed, :foods_attributes => [:name, :serving_size, :adjusted_serving_size, :protein, :adjusted_protein, :protein_consumed, :carbs, :adjusted_carbs, :carbs_consumed, :fat, :adjusted_fat, :fat_consumed, :calories, :adjusted_calories, :calories_consumed, :meal_id])
    end
end
