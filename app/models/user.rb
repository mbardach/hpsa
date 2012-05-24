class User < ActiveRecord::Base
  attr_accessible :academy_flag, :acronym, :company_id, :department_id, :email, :email_status, :first_name, :hierarchy_level, :last_name, :manager_flag, :middle_name, :recruited_at, :status, :title, :trainer_flag, :user_code, :manager_id
  belongs_to :company
  has_many :quote_details
  has_many :quotes
  has_many :training_users
  has_many :trainings
  validates :acronym, :presence => true, :uniqueness => true
 #validates_inclusion_of :status, :in => %w( Demisionné Permanent Temporaire) ,:message => "Status %{value} is not a valid option"

  def full_name
    [first_name, last_name].join(' ')
  end

end
