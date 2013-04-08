class Notifications < ActionMailer::Base
  def exam_taken(user, run)
    @run = run
    @user = user
    mail  to: "#{user.email}",
          from: 'smthingborrowed@gmail.com',
          subject: "Results for #{@run.exam.name}"
  end

  def purchased(user, run)
    @user = user
    @run = run
    mail :to=>@user.email, :from=>'smthingborrowed@gmail.com', :subject=>'Confirm Exam Purchase'
  end
end