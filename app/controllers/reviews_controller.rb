class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @service = Service.find(params[:service_id])
    @review.service = @service
      if @review.save
        redirect_to service_path(@service)
      else
        render 'service/show'
      end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to service_path(@service)
  end

  private
  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
