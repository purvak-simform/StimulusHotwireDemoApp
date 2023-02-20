class Genere < ApplicationRecord
  has_many :uploads
  acts_as_list
end
