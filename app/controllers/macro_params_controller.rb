class MacroParamsController < ApplicationController

  def macros
    # user = User.find_by(id: 1)

    tdee = TdeeCalculator.new(@user).calculate_tdee
    macros = MacroCalculations.new(@user, tdee).macro_calculation
    
    render json: macros.to_json
  end
end

private

def set_user
  @user = User.find(params[:id])
end
