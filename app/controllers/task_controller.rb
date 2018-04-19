class TaskController < ApplicationController
  def index
  end

  def create
    Task.create(description:params[:description],finished:false)
    redirect_to action: 'index'
  end

  def finished
  #  render text:'testeee' + params[:id]
    Task.find_by_id(params[:id]).update_attribute(:finished,true)
    redirect_to action:'index'
  end
  
  def open
    Task.find_by_id(params[:id]).update_attribute(:finished,false)
    redirect_to action:'index'
  end
  
  def delete
    task = Task.find_by_id(params[:id])
    task.delete if task
    redirect_to action: 'index'
  end
  
  def edit
    @task = Task.find_by_id(params[:id])
  end
  
  def update 
    
  end
  
end

