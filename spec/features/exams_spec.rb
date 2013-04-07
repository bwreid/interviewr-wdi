require 'spec_helper'
require 'features//helpers/login_helper'
include LoginHelper

describe 'Exams' do
  let(:user) {FactoryGirl.create(:user)}
  let(:exam) {FactoryGirl.create(:exam)}

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
      # This is commented out because there is a bug with this version of Rspec
      #  and how it deals with precompiled assets. It's searching for a JQuery UI
      #  asset in the images folder that isn't there.
      #
      # user = FactoryGirl.create(:user)
      # exam = FactoryGirl.create(:exam)
      # tag = FactoryGirl.create(:tag)
      # login(user)
      # click_link "New Exam"
      # click_link "Create New Exam"
      # fill_in("Name",:with=>exam.name)
      # choose("exam_fee_false")
      # fill_in("exam_pass_rate",:with=>exam.pass_rate)
      # fill_in("tags", :with=>tag.name)
      # click_button('Create Exam')
      # page.should have_button('Create Exam')
    end
  end

  describe 'Stripe credit card input' do
    it 'displays the Stripe credit card modal when customer_id is nil',:js=>true do
      visit root_path
      login(user)
      visit root_path
      exam.save
      fill_in('search',:with=>exam.name)
      find('.stripe-button-el').click
    end
    # it 'displays the one click purchase button when customer_id is present', :js=>true do
    #   visit root_path
    #   login(user)
    #   visit root_path
    #   exam.save

    # end

  end




end
