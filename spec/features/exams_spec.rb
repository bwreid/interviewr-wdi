require 'spec_helper'
require 'features//helpers/login_helper'
include LoginHelper

describe 'Exams' do
  describe 'GET /exams' do
    it 'displays a list of all exams', :js=>true do
      exam = FactoryGirl.create(:exam)
      user = FactoryGirl.create(:user)
      visit root_path
      page.should have_text(exam.name)
    end
  end

  describe 'POST /exams' do
    it 'creates a new exam', :js=>true do
      user = FactoryGirl.create(:user)
      login(user)
    end
  end

end
