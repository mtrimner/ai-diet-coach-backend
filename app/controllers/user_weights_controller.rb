class UserWeightsController < ApplicationController
  before_action :set_user_weight, only: [:show, :update, :destroy]

  # GET /user_weights
  def index
    @user_weights = UserWeight.all

    render json: @user_weights
  end

  # GET /user_weights/1
  def show
    render json: @user_weight
  end

  # POST /user_weights
  def create
    @user_weight = UserWeight.new(user_weight_params)

    if @user_weight.save
      render json: @user_weight, status: :created, location: @user_weight
    else
      render json: @user_weight.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_weights/1
  def update
    if @user_weight.update(user_weight_params)
      render json: @user_weight
    else
      render json: @user_weight.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_weights/1
  def destroy
    @user_weight.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_weight
      @user_weight = UserWeight.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_weight_params
      params.require(:user_weight).permit(:weight, :user_id)
    end
end
