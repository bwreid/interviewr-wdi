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
#  balance         :decimal(, )      default(0.0)
#  image           :string(255)
#  password_digest :string(255)
#  lat             :float
#  lon             :float
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe User do
  let(:user) {User.create(first: "Bob", last: "Bobberson", email: "bob@gmail.com", address: "10 E 21st St, New York, NY", password: "a", password_confirmation: "a")}
  describe '.create' do
    it 'creates a new User object if validation passes' do
      expect(user.id).to_not be nil
    end
    it 'does not create a User object if it fails validation' do
      user1 = User.create
      expect(user1.id).to be nil
    end
  end
  describe '#runs' do
    it 'should show the runs that the user has' do
      run = FactoryGirl.create(:run)
      user.runs << run
      expect(user.runs.first).to eq run
    end
  end
end
