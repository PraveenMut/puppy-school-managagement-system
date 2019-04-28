class PuppiesController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @puppies = Puppy.all
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      redirect_to puppy_path(@puppy.id)
    else
      render 'new'
    end
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @puppy = Puppy.find(params[:id])
    @puppy.update(puppy_params)
    redirect_to puppy_path(@puppy.id)
  end

  def delete
    @puppy = Puppy.find(params[:id])
    @puppy.destroy
    redirect_to puppies_path
  end

  private
  def puppy_params
    params.permit(:name, :age, :uploaded_image)
  end
end
