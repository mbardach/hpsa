class ProgramCourse < ActiveRecord::Base
   attr_accessible :course_id, :description, :duration, :program_course_order, :program_id, :unit
   belongs_to :course
   belongs_to :program
  
 validates_uniqueness_of :course_id, :scope => [:program_id]
 validates :duration, :format => { :with => /^\d+??(?:\.\d{0,2})?$/ }
 validates_inclusion_of :unit, :in => %w(Day(s) Hour(s) ) , :allow_nil => false, :message => "=Unit %{value} is not a valid option"
  validates :program_course_order, :numericality => { :only_integer => true }  	
	default_scope order('program_id','program_course_order')

end
