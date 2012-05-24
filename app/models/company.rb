class Company < ActiveRecord::Base
  attr_accessible :blocked, :country_id, :id, :code, :contact_principal_id, :sales_principal_id, :currency_id, :email, :language, :management_flag, :memo, :name, :phone, :relationship, :sales_contact_id, :weekend_day_1, :weekend_day_2
	has_many :courses
	has_many :module_groups
	has_many :programs
	has_many :Subjects
	has_many :departments
	has_many :users
	has_many :quotes
	validates :code, :presence => true, :uniqueness => true
	validates :relationship, :name, :language, :presence => true
	validates :weekend_day_1,:weekend_day_1, :numericality => { :only_integer => true,  }
	validates_inclusion_of :relationship, :in => %w( Partner Client Internal  ) ,:message => "Ralationship %{value} is not a valid option"
	validates_inclusion_of :weekend_day_1,:weekend_day_2, :in => 1..7 
	
end
