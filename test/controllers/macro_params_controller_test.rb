require 'test_helper'

class MacroParamsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get macro_params_show_url
    assert_response :success
  end

end
