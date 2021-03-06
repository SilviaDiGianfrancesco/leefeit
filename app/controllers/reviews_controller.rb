class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_cosmetic
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]
 

  respond_to :html



  def new
    @review = Review.new
    respond_with(@review)
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
     @review.user_id = current_user.id
     @review.cosmetic_id = @cosmetic.id
    @review.save

    respond_with(@review, :location => @cosmetic)
  end

  def update
    @review.update(review_params)
    respond_with(@review)
  end

  def destroy
    @review.destroy
    respond_with(@review)
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end

    def set_cosmetic
      @cosmetic = Cosmetic.find(params[:cosmetic_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end
end
