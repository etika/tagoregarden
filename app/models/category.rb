class Category < ActiveRecord::Base
  has_many :entries
  has_many :schemes
  # def to_param
  #   "#{id} #{category_name}".parameterize
  # end
  validates_presence_of :category_name
end
