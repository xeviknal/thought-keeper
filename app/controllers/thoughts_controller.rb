class ThoughtsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  load_and_authorize_resource

  def index
    @list = List.find params[:list_id]
    render json: @list.thoughts
  end

  def create
    @list = List.find params[:list_id]
    @list.build_thought(thought_params)

    if @list.save
      render json: @list.thoughts
    else
      render status: 500
    end
  end

  private

  def thought_params
    params.require(:thought).permit(:title, :description)
  end
end
