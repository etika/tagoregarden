class Owner < ActiveRecord::Base
  has_many :entries
end
