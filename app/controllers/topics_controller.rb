class TopicsController < ApplicationController
  before_action :set_sub


  def index
    @topics = @sub.topics
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def set_sub
    @sub = Sub.find(params[:sub_id])
  end
end
