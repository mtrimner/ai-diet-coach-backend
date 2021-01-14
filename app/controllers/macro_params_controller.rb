class MacroParamsController < ApplicationController
  skip_before_action :require_login

  def macros
    user = User.find(1)

    tdee = TdeeCalculator.new(user).calculate_tdee
    
  end
end
