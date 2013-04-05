class ExamsController < ApplicationController

  def show
    @exam = Exam.find(params[:id])
    responses = @exam.questions.first.responses.select{|x| x.run_id == nil}
    if responses.length == 0
      @exam.make_responses
    end
    @responses = @exam.questions.map{|x| x.responses}.flatten.select{|y| y.run_id == nil}
  end

  def submit
    exam = Exam.find(params[:id])
    exam.questions.each do |x|
      params["#{x.id}"].each do |y|
        r = Response.find(y)
        r.answer = true
        r.save
      end
    end
    @run = Run.create(exam_id:exam.id, user_id:@auth.id)
    @run.responses << exam.questions.map{|x| x.responses}.flatten.select{|y| y.run_id == nil}
    Notifications.exam_taken(@auth, @run).deliver
    client = Twilio::REST::Client.new(ENV['TW_SID'], ENV['TW_TOK'])
    body = "You completed #{@run.exam.name} and you got #{@run.score}% on it. Check your email for more information"
    client.account.sms.messages.create(:from => ENV['TW_NUM'], :to => @auth.phone, :body => body)
  end


  def index
  end

  def new
    @exam = Exam.new
  end

  def create
    # NEED TO ASSOCIATE CREATOR_ID WITH USER
    exam = Exam.create( params[:exam] )
    params[:tags].split(', ').each do |tag|
      exam.tags << Tag.find_or_create_by_name( name: tag.downcase )
    end

    redirect_to(new_exam_path)
  end

  def analytic
    @exam = Exam.find(params[:id])
    # @runs = Run.where(:exam_id => @exam.id)
    @users = Run.where(:exam_id => @exam.id).map{|x| x.user}.uniq
  end

  def scores
    exam = Exam.find(params[:id])
    runs = Run.where(:exam_id => exam.id)
    scores = runs.map{|x| {datetime:x.created_at.to_s[0..18], score:x.score, name:x.user.first}}
    render :json => scores
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
