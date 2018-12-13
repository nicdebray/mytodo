class TodosController < ApplicationController
  before_action :todo_find, only: [:show, :edit, :update, :destroy]

  def index
    # @todos = Todo.all
    @todo = Todo.new
    if params[:search]
      @todos = Todo.where('title LIKE ?', "%#{params[:search]}")
    else
      @todos = Todo.all
    end
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      respond_to do |format|
      format.html { redirect_to todos_path }
      format.js
      end
    else
      respond_to do |format|
      format.html { render :new }
      format.js
      end
    end
  end

  def edit
  end

  def update
    if @todo.update(todo_params)
      redirect_to todos_path
    else
      render :new
    end
  end

  def destroy
    if @todo.destroy
      redirect_to todos_path
    else
      render :new
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title, :description, :search)
  end

  def todo_find
    @todo = Todo.find(params[:id])
  end
end
