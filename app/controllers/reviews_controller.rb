class ReviewsController < ApplicationController
  def create
    Review.create(review_params)
  end
  def show
    @reviews= Review.where(:entry_id=>params[:entry_id])
  end
  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(:content,:user_id,:entry_id,:rating)
    end
end
