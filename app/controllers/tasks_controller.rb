class TasksController < ApplicationController
  def create
  	#create task
  	@task = current_user.tasks.create(task_params)

  	if @task.save
  		#if task saves
  		flash[:success] = "Task Created"
  		render 'index'
  	else
  		#if task doesnt save
  		flash[:error] = "Task not Created"
  		redirect_to root_path
  	end

  end

  def destroy
  end

  def new
  	@task = Task.new
  end

  def update
  end

  def index
  	@tasks = Task.all
  end

  private
  	def task_params
  		#strong params for task to save
  		params.require(:task).permit(:title)
  	end
end
