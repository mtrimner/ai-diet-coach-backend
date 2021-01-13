require 'test_helper'

class DietsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet = diets(:one)
  end

  test "should get index" do
    get diets_url, as: :json
    assert_response :success
  end

  test "should create diet" do
    assert_difference('Diet.count') do
      post diets_url, params: { diet: { end_date: @diet.end_date, goal: @diet.goal, start_date: @diet.start_date, target_weight: @diet.target_weight, user_id: @diet.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show diet" do
    get diet_url(@diet), as: :json
    assert_response :success
  end

  test "should update diet" do
    patch diet_url(@diet), params: { diet: { end_date: @diet.end_date, goal: @diet.goal, start_date: @diet.start_date, target_weight: @diet.target_weight, user_id: @diet.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy diet" do
    assert_difference('Diet.count', -1) do
      delete diet_url(@diet), as: :json
    end

    assert_response 204
  end
end
