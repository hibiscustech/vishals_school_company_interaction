class SchoolsController < ApplicationController
  def index
  end

  def new
   @school=School.new
  end

  def edit
  end

  def show
  end

  def create
     @school = School.new(params[:school])
    if @school.save
      flash[:notice] = "Successfully created school."
      redirect_to @school
    else
      render :action => 'new'
    end

  end

  def update
  end

  def delete
  end

end
