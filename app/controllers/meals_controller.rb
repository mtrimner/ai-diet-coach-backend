class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  def index
    @meals = Meal.all

    render json: @meals
  end

  # GET /meals/1
  def show
    render json: @meal
  end

  # POST /meals
  def create
    binding.pry
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
