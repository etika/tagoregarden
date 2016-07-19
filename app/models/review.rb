class Review < ActiveRecord::Base
belongs_to :entry
validates_presence_of :content,:rating
end
