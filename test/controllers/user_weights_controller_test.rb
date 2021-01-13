require 'test_helper'

class UserWeightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_weight = user_weights(:one)
  end

  test "should get index" do
    get user_weights_url, as: :json
    assert_response :success
  end

  test "should create user_weight" do
    assert_difference('UserWeight.count') do
      post user_weights_url, params: { user_weight: { user_id: @user_weight.user_id, weight: @user_weight.weight } }, as: :json
    end

    assert_response 201
  end

  test "should show user_weight" do
    get user_weight_url(@user_weight), as: :json
    assert_response :success
  end

  test "should update user_weight" do
    patch user_weight_url(@user_weight), params: { user_weight: { user_id: @user_weight.user_id, weight: @user_weight.weight } }, as: :json
    assert_response 200
  end

  test "should destroy user_weight" do
    assert_difference('UserWeight.count', -1) do
      delete user_weight_url(@user_weight), as: :json
    end

    assert_response 204
  end
end
