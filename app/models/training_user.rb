class TrainingUser < ActiveRecord::Base
  attr_accessible :quote_details_id, :status, :training_id, :user_id
  belongs_to :training
  belongs_to :user
  belongs_to :quote_details
	#	 validates_inclusion_of :status, :in => %w( "waiting Manager" "Not authorised" Authorised Present Absent Excused) ,:message => "Status %{value} is not a valid option"

end
