class Reservation < ActiveRecord::Base
  validates :party_size, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 300 }

  belongs_to :restaurant
  belongs_to :customer

end
