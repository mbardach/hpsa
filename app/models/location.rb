class Location < ActiveRecord::Base
  attr_accessible :capacity, :code, :description
  has_many :trainings
 validates :capacity, :numericality => { :greater_than => 1 }
 validates :code, :presence => true, :uniqueness => true

end
