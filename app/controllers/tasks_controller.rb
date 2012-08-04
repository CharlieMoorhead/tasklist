class TasksController < ApplicationController
  def new
    @date = Date.today
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to tasks_url
    else
      @date = params[:task][:date]
      render :new
    end
  end

  def index
    date_parameter = params[:d]
    if date_parameter =~ /^\d{8}$/
      @date = Date.strptime(date_parameter,"%Y%m%d")
    else
      @date = Date.today
    end
    @tasks = Task.where(:date => @date)
  end
end
