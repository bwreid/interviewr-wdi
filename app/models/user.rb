# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first           :string(255)
#  last            :string(255)
#  email           :string(255)
#  is_house        :boolean
#  address         :string(255)
#  phone           :string(255)
#  occupation      :string(255)
#  balance         :decimal(, )
#  image           :string(255)
#  password_digest :string(255)
#  lat             :float
#  lon             :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :address, :balance, :email, :first, :image, :is_house, :last, :lat, :lon, :occupation, :password, :password_digest, :phone
  has_secure_password
  has_many :runs
  has_many :responses

  before_save :get_location
  private
  def get_location
    results = Geocoder.search(self.address).first
    if results.present?
      self.lat = results.latitude
      self.lon = results.longitude
    end
  end
end
