class ReviewsController < ApplicationController
  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
    authorize @review
  end
  
  def create
    @review = Review.new(review_params)
    @service = Service.find(params[:service_id])
    @review.service = @service
    @review.user = current_user
    authorize @review
      if @review.save
        redirect_to service_path(@service)
      else
        render 'service/show'
      end
  end

  def destroy
    @review = Review.find(params[:id])
    authorize @review
    @review.destroy
    redirect_to service_path(@service)
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating, :user, :review)
  end
end
