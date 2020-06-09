class Api::V1::ItemsController < ApplicationController
  before_action :set_user
  # GET /users/:id/items
  def index
    if @user
      @items = @user.items
      render json: ItemSerializer.new(@items), status: :ok
    else
      render json: { error: "User not found." }, status: :unprocessable_entity
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end

  # Only allow a trusted parameter "white list" through.
  def item_params
    params.require(:item).permit(:name, :user_id)
  end
end
