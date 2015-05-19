class ListsController < ApplicationController
  def create
    @list = List.new params[:list]

    if @list.save
      render json: @list
    else
      render :ko
    end
  end
end
