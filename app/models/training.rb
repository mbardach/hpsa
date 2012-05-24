class Training < ActiveRecord::Base
  attr_accessible :description, :duration_unit, :effective_duration, :effective_participants, :expected_duration, :language, :location_id, :origin, :planned_participants, :status, :training_end_date, :training_start_date, :user_id, :course_id
  has_many :training_users
  belongs_to :course
  belongs_to :user
  belongs_to :location
	#	 validates_inclusion_of :status, :in => %w( Planned Available Pending Confirmed Closed Cancelled realised) ,:message => "Status %{value} is not a valid option"
end
