class Quote < ActiveRecord::Base
  attr_accessible :comment, :company_id, :delay, :latest_by_date, :origin, :requested_date, :status, :user_id
  belongs_to :user
  belongs_to :company
  has_many :quote_details

	
  default_scope order('latest_by_date')

end
