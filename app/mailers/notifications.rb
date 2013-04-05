class Notifications < ActionMailer::Base
  def exam_taken(user)
    mail  to: 'holla@bryanwreid.com',
          from: 'holla@bryanwreid.com',
          subject: 'You just took an exam!'
  end
end