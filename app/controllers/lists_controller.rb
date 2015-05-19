class ListsController < ApplicationController
  skip_before_filter :verify_authenticity_token, only: :create
  load_and_authorize_resource

  def index
    render json: @lists
  end

  def create
    @list = List.new params[:list]

    if @list.save
      render json: @list
    else
      render status: 500, json: { errors: @list.errors.full_messages }
    end
  end
end
