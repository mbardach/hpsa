class Theme < ActiveRecord::Base
  attr_accessible :theme_code, :theme_description, :theme_private_field
  has_many :module_groups
	validates :theme_code, :presence => true, :uniqueness => true
end
