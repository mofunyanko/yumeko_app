class Users::PartsController < ApplicationController
  def index
    @parts = Part.includes(:parts_category).all
    @categories = PartsCategory.all
  end

  def show
  end

  def search
    @categories = PartsCategory.all
    if params[:category].empty?
      @parts= Part.all
    else
      @parts= Part.where( parts_category_id: params[:category])
    end
    render :index
  end
end
