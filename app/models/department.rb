class Department < ActiveRecord::Base
  attr_accessible :company_id, :department, :hierarchy_level, :level_1, :level_2
	belongs_to :company
end
