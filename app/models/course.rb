class Course < ActiveRecord::Base
	  attr_accessible :company_id, :course_audience, :course_code, :course_description, :course_introduction, :course_planned_duration, :course_status, :course_title, :course_order, :course_training_material_ref, :course_type, :decimal, :subject_id
   belongs_to :subject
   belongs_to :company
   has_many :quote_details
   has_many :program_courses
   has_many :trainings
   validates :course_code, :presence => true, :uniqueness => true
   validates :subject_id, :presence => true
   validates :course_planned_duration, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }
   validates_inclusion_of :course_status, :in => %w( Available Discontinued ) , :allow_nil => false, :message => "Status %{value} is not a valid option"
   validates_inclusion_of :course_audience, :in => %w( Public Partner Private  ) ,:message => "Audience %{value} is not a valid option"	
   validates :company_id, :presence => true, :if => :is_private?
   validates_inclusion_of :course_type, :in => %w( Workshop Presentation E-learning) ,:message => "type %{value} is not a valid option"
  
  default_scope order('course_order')
	
	def is_private?
    course_audience == "Private"
  end
end
