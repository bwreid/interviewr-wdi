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

require 'spec_helper'

describe User do
  pending "add some examples to (or delete) #{__FILE__}"
end
