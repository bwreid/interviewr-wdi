require 'spec_helper'

describe 'Exams' do
  describe 'GET /exams' do
    it 'displays a list of all exams', :js=>true do
      exam = FactoryGirl.create(:exam)
      user = FactoryGirl.create(:user)
      visit root_path
      page.should have_text(exam.name)
    end
  end


end
