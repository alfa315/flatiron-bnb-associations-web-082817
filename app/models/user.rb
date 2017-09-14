class User < ActiveRecord::Base

  has_many :listings, :foreign_key => 'host_id'
  has_many :reservations, :foreign_key => 'guest_id'
  has_many :reviews, :foreign_key => "guest_id"
  has_many :reservations, :through => :listings, :foreign_key => "host_id"

  has_many :trips, :class_name => "reservations", :foreign_key => 'guest_id'

end

# has_many
# belongs_to
#
# has_many :blah, :through => blah
#
# belongs_to :blah, :class_name => "blah"
# has_many :blah, :foreign_key => "guest_id"
# "guest has many blah"
