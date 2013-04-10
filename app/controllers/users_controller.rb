class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.valid?
      session[:user_id] = @user.id
      authentication
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      @user = User.find(@user.id)
    else
      nil
    end
  end

  def scores
    user = User.find(params[:id])
    runs = user.runs
    scores = runs.map{|run| {datetime: run.created_at.strftime('%d/%m/%Y'), score: run.score, exam_name: run.exam.name}}
    render :json => scores
  end
end