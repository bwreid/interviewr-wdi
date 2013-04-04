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

require 'spec_helper'

describe Test do
  pending "add some examples to (or delete) #{__FILE__}"
end
