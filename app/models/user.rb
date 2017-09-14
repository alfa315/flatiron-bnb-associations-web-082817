class User < ActiveRecord::Base[4.2]

  has_many :listings, :foreign_key => 'host_id'

end
