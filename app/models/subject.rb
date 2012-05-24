class Subject < ActiveRecord::Base
  attr_accessible :audience, :company_id, :subject_way, :module_group_id, :subject_code, :subject_description
  belongs_to :module_group
  belongs_to :company
  has_many :courses
  validates :subject_code, :presence => true, :uniqueness => true
  validates :module_group_id, :presence => true
end
