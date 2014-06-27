class Reservation < ActiveRecord::Base
  validates :party_size, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 300 }

  belongs_to :restaurant
  belongs_to :customer

  validate :availability

  private
  def availability
    if !restaurant.available?(party_size, start_time)
      errors.add(:base, "Sorry, restaurant is full. Please choose another time.")
      puts "=" * 10
      puts "N" + ("o" * 9)
      puts "=" * 10
    end
  end
end
