class Customer < ActiveRecord::Base
    validates :first_name, :last_name, :email, :bio_description, :presence => true
  has_secure_password
end
