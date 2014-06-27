class Restaurant < ActiveRecord::Base
  validates :name, :description, :cuisine, :location, :hours_open, :presence => true
  validates :phone_number, :numericality => { :only_integer => true }

  belongs_to :owner
  has_many :reservations

  def available?(party_size, start_time=nil)
    fill = reservations.where(start_time: start_time).sum(:party_size) 
    party = party_size

    fill + party <= max_occupancy

    # reservations.where(start_time: start_time).sum(:party_size) <= max_occupancy 
  end
end
