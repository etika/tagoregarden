class Entry < ActiveRecord::Base
  # belongs_to :owner
  belongs_to :user
  belongs_to :category
  has_many :reviews
  # delegate :owner_name,:phone_number ,:to => :owner, :prefix => true
  validates_presence_of :latitude,:longitude,:address,:other_details
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]


  def avg_rating
     rating= self.reviews.sum(:rating)
    avg_rating=(rating/self.reviews.count) rescue nil
  end
end
