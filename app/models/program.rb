class Program < ActiveRecord::Base
  attr_accessible :company_id, :program_unit, :program_audience, :program_code, :program_description, :program_duration, :program_order, :program_status, :program_title
  has_many :program_courses
  belongs_to :company

  validates :program_code, :presence => true, :uniqueness => true
  validates :company_id, :presence => true, :if => :is_private?
	validates_inclusion_of :program_audience, :in => %w( Public Partner Private  ) ,:message => "Audience %{value} is not a valid option"	
  validates_inclusion_of :program_status, :in => %w( Available Discontinued ) , :allow_nil => false, :message => "Status %{value} is not a valid option"
  validates_inclusion_of :program_unit, :in => %w(Days Hours ) , :allow_nil => false, :message => "Status %{value} is not a valid option"
  default_scope order('program_order')

	
	def is_private?
    program_audience == "Private"
  end
end
