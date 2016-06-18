class Entry < ActiveRecord::Base
  belongs_to :owner
  belongs_to :category
  has_many :reviews
end
