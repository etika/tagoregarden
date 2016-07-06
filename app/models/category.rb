class Category < ActiveRecord::Base
  has_many :entries
  # def to_param
  #   "#{id} #{category_name}".parameterize
  # end
end
