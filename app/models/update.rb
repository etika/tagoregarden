class Update < ActiveRecord::Base
  extend FriendlyId
  friendly_id :topic, use: :slugged
  acts_as_taggable_on :tags
end
