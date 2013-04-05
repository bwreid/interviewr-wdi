class ExamsController < ApplicationController
  def index
  end

  def show
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

  def edit
  end

  def update
  end

  def destroy
  end
end