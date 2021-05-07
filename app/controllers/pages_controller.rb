class PagesController < ApplicationController
  def home
  end

  def dashboard
    @results = params[:results_query]
    @orders = current_user.orders
    @services = current_user.services
  end
end
