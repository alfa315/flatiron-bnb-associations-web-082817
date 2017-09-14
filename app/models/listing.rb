class Listing < ActiveRecord::Base[4.2]

  belongs_to :host, :class_name => "User"
  
end
