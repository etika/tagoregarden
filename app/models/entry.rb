class Entry < ActiveRecord::Base
  # belongs_to :owner
  belongs_to :user
  belongs_to :category
  has_many :reviews
  # delegate :owner_name,:phone_number ,:to => :owner, :prefix => true
  validates_presence_of :latitude,:longitude,:address,:other_details
  def avg_rating
     rating= self.reviews.sum(:rating)
    avg_rating=(rating/self.reviews.count) rescue nil
  end
end
