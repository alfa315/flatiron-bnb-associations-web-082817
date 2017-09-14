class Reservation < ActiveRecord::Base
  belongs_to :listing
  has_many :reviews
  
  # old version: Didn't work.
  # belongs_to :guest, :class_name => "User"
  belongs_to :guest, :class_name => "User", :foreign_key => "guest_id"

end
