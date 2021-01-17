require 'test_helper'

class FoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @food = foods(:one)
  end

  test "should get index" do
    get foods_url, as: :json
    assert_response :success
  end

  test "should create food" do
    assert_difference('Food.count') do
      post foods_url, params: { food: { adjusted_calories: @food.adjusted_calories, adjusted_carbs: @food.adjusted_carbs, adjusted_fat: @food.adjusted_fat, adjusted_protein: @food.adjusted_protein, adjusted_serving_size: @food.adjusted_serving_size, calories: @food.calories, calories_consumed: @food.calories_consumed, carbs: @food.carbs, carbs_consumed: @food.carbs_consumed, fat: @food.fat, fat_consumed: @food.fat_consumed, meal_id: @food.meal_id, name: @food.name, protein: @food.protein, protein_consumed: @food.protein_consumed, serving_size: @food.serving_size } }, as: :json
    end

    assert_response 201
  end

  test "should show food" do
    get food_url(@food), as: :json
    assert_response :success
  end

  test "should update food" do
    patch food_url(@food), params: { food: { adjusted_calories: @food.adjusted_calories, adjusted_carbs: @food.adjusted_carbs, adjusted_fat: @food.adjusted_fat, adjusted_protein: @food.adjusted_protein, adjusted_serving_size: @food.adjusted_serving_size, calories: @food.calories, calories_consumed: @food.calories_consumed, carbs: @food.carbs, carbs_consumed: @food.carbs_consumed, fat: @food.fat, fat_consumed: @food.fat_consumed, meal_id: @food.meal_id, name: @food.name, protein: @food.protein, protein_consumed: @food.protein_consumed, serving_size: @food.serving_size } }, as: :json
    assert_response 200
  end

  test "should destroy food" do
    assert_difference('Food.count', -1) do
      delete food_url(@food), as: :json
    end

    assert_response 204
  end
end
