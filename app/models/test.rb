# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  fee        :boolean          default(FALSE)
#  pass_rate  :integer
#  code       :string(255)
#  creator_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Test < ActiveRecord::Base
  attr_accessible :code, :creator_id, :fee, :name, :pass_rate, :private
  has_many :runs
  has_many :questions
  has_and_belongs_to_many :tags
end
