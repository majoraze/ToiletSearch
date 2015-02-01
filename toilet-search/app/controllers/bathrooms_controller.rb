class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.includes(:reviews, :ratings, :feature, :category)

    respond_to do |format|
      format.html # show.html.erb
      format.json do
        render :json => @bathrooms.to_json(:include => [:reviews, :ratings, :feature, :category])
      end
    end

  end

  def show
    @bathrooms = Bathroom.includes(:reviews, :ratings, :feature, :category)
    #@bathroom = Bathroom.find(params[:id])
    render "index"
  end

  def new
    #creates the structure to the toilet and the chance to the user who created to make a review
    @bathroom = Bathroom.new
    @bathroom.feature = Feature.new
    @bathroom.reviews = [Review.new] #como é has_many e só quero cadastrar 1, tenho que iniciar na array
  end

  def edit
    #cannot edit
  end

  def create
    @bathroom = Bathroom.new(bathroom_params)
    @bathroom.save

    redirect_to root_path, {notice: "Criado!"}
    #render text: params[:bathroom].inspect
  end

  def update
    #cannot update
  end

  def destroy
    #cannot destroy
  end

  private
  def bathroom_params
    #depois separar as permissões para impedir injection, aqui to forçando a permissão de tudo
    params.require(:bathroom).permit!
  end

end
