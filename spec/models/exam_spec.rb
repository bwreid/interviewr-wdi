# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  fee        :boolean
#  pass_rate  :integer
#  creator_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Exam do
  pending "add some examples to (or delete) #{__FILE__}"
end
