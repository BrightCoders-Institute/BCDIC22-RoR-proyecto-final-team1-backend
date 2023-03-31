class ReviewsController < ApplicationController
  def show
    @place = Place.find(params[:place_id])
    @reviews = @place.reviews

    reviews_array = []
    @reviews.each do |review|
      review_hash = {}
      review_hash[:author] = review.user.name
      review_hash[:comment] = review.comment
      review_hash[:created_at] = review.created_at      
      reviews_array << review_hash
    end
    if @reviews.length >= 1
      # render json: @reviews
      render json: reviews_array.to_json
    else
      render json: { error: 'Place does not have any reviews' }, status: :not_found
    end
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.valid? 
      @review.save
      render json: { review: @review, message: "Review created successfully" }, status: :created
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
  
  def review_params
    params.require(:review).permit(:user_id, :place_id, :comment)
  end
end
