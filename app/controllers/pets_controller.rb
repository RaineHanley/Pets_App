class PetsController < ApplicationController
    def index
      @pets = Pet.all
    end


  def show
    @pet = Pet.find_by(id: params[:id])
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create(pet_params)
    if @pet.save
      redirect_to @pet
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end

  def edit
  @pet = Pet.find_by(id: params[:id])
  render :edit
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.update(
    breed: params[:breed],
    color: params[:color],
    size: params[:size],
    age: params[:age],
    img_url: params[:img_url],)
   redirect_to "/pets"
  end

  def destroy
  @pet = Pet.find_by(id: params[:id])
  @pet.destroy
  redirect_to "/pets", status: :see_other
  end
end