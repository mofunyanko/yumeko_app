class Users::OrdersController < ApplicationController
  def index
    @parts = Part.includes(:parts_category).all
    @categories = PartsCategory.all
  end

  def show
  end

  def new
    @order = Order.new
    @parts = Part.includes(:parts_category).all
    @categories = PartsCategory.all
  end

  def create
    params[:parts].each do |pt|
      @order = Order.new(order_params)
      @order.part_id = pt[1]["id"]
      @order.pu_qty = pt[1]["pu_qty"]
      unless @order.save
        render :new
        break
      end
    end
    redirect_to users_pages_index_path
  end

  def search
    @categories = PartsCategory.all
    if params[:category].empty?
      @parts= Part.all
    else
      @parts= Part.where( parts_category_id: params[:category])
    end
    render :new
  end

  private

  def order_params
    params.require(:order).permit(:part_id, :user_id, :pu_qty, :is_personal)
  end
end
