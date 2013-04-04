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
  describe '.runs' do
    it 'should show the runs that the user has' do
      run = FactoryGirl.create(:run)
      user = FactoryGirl.create(:user)
      user.runs << run
      expect(user.runs.first).to eq run
    end
  end

  describe '.responses' do
    it 'should show a list of user responses' do
      response = FactoryGirl.create(:response)
      user = FactoryGirl.create(:user)
      user.responses << response
      expect(user.responses.first).to eq response
    end
  end
end
