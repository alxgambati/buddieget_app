class OrdersController < ApplicationController
  def new
    @service = Service.find(params[:service])
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new
    @order.user = current_user
    @order.service = Service.find(params[:service])
    authorize @order
    if @order.save
      redirect_to dashboard_path(results_query: 'orders')
    else
      render :new
    end
  end
end

