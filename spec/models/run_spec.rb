# == Schema Information
#
# Table name: runs
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  test_id    :integer
#  count      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Run do
  pending "add some examples to (or delete) #{__FILE__}"
end
