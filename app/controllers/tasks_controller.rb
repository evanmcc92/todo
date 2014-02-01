class TasksController < ApplicationController
  def create
  	#create task
  	@task = current_user.tasks.create(task_params)

  	if @task.save
  		#if task saves
  		flash[:success] = "Task Created"
  		redirect_to root_path
  	else
  		#if task doesnt save
  		flash[:error] = "Task not Created"
  		redirect_to :back
  	end

  end

  def destroy
  	@task = Task.find(params[:id])

  	@task.destroy

  	redirect_to :back
  end

  def new
  	@task = Task.new
  end

  def edit
  	@task = Task.find(params[:id])
  end


  def update
  	@task = Task.find(params[:id])

  	if @task.update_attributes(update_task_params)
  		#if task saves
  		flash[:success] = "Task Updated"
  		redirect_to root_path
  	else
  		#if task doesnt save
  		flash[:error] = "Task not Updated"
  		redirect_to :back
  	end
  end

  def index
  	@tasks = current_user.tasks.all
  end

  private
  	def task_params
  		#strong params for task to save
  		params.require(:task).permit(:title, :description, :priority, :due, :reminder)
  	end
  	
  	def update_task_params
  		#strong params for task to save
  		params.require(:task).permit(:title, :description, :priority, :due, :reminder, :complete)
  	end
end
