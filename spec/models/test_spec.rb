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
  describe ".create" do
    it "should have an id and stuff" do
      test = FactoryGirl.create(:test)
      expect(test).to be_an_instance_of(Test)
      expect(test.id).to_not eq nil
      expect(test.name).to eq "MyString"
    end
  end

  describe "#tags" do
    it "should have tags" do
      test = FactoryGirl.create(:test)
      tag = FactoryGirl.create(:tag)
      test.tags << tag
      expect(test.tags.first).to eq tag
    end
  end

  describe "#runs" do
    it "should have runs" do
    end
  end
end
