class ModuleGroup < ActiveRecord::Base
  attr_accessible :audience, :company_id, :module_group_code, :module_group_description, :theme_id
  belongs_to :theme
  belongs_to :company
  has_many :subjects
  validates :module_group_code, :presence => true, :uniqueness => true
  validates_inclusion_of :audience, :in => %w( Public Partner Private  ) ,:message => "Audience %{value} is not a valid option"	
	validates :company_id, :presence => true, :if => :is_private?
  validates :theme_id, :presence => true

	default_scope order('theme_id','module_group_code')

	
	def is_private?
    audience == "Private"
  end
end
