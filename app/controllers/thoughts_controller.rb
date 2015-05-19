class ThoughtsController < ApplicationController
  load_and_authorize_resource

  def index
    @list = List.find params[:list_id]
    render json: @list.thoughts
  end
end
