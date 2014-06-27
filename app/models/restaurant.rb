class Restaurant < ActiveRecord::Base
  validates :name, :description, :cuisine, :location, :hours_open, :presence => true
  validates :phone_number, :numericality => { :only_integer => true }

  belongs_to :owner
end
