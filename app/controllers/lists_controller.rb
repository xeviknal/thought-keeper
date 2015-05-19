class ListsController < ApplicationController
  load_and_authorize_resource

  def index
    render json: @lists
  end

  def create
    @list = List.new params[:list]

    if @list.save
      render json: @list
    else
      render :ko
    end
  end
end
