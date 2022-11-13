class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    render :show
  end

  def create
    
  end

  def new #form
    @cat = Cat.new
    @colors = ['black', 'white', 'orange', 'gray', 'multi-colored', 'pink', 'brown']
    @sex = ['F', 'M']
    render :new
  end

  def edit #form
    @cat = Cat.find_by(id: params[:id])
    @colors = ['black', 'white', 'orange', 'gray', 'multi-colored', 'pink', 'brown']
    @sex = ['F', 'M']
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])

  end

  private
  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end
  
end