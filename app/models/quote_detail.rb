class QuoteDetail < ActiveRecord::Base
  attr_accessible :course_id, :quote_id, :user_id, :status
  has_many :training_users
  belongs_to :quote
  belongs_to :user
  belongs_to :course
	#	 validates_inclusion_of :status, :in => %w( Authorised "Waiting Manager" "Declined by manager" Planned Confirmed Present rescheduled "Canceled too late") ,:message => "Ralationship %{value} is not a valid option"
end
