class ListsController < ApplicationController
  respond_to :html, :json
  skip_before_action :verify_authenticity_token, only: :create
  load_and_authorize_resource

  def index
    respond_to do |format|
      format.json { render json: @lists }
      format.html { render :index }
    end
  end

  def create
    @list = List.new list_params

    if @list.save
      render json: @list
    else
      render status: 500, json: { errors: @list.errors.full_messages }
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
