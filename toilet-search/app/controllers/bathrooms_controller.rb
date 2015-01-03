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

  end

  def edit

  end

  def create

  end

  def update

  end

  def destroy

  end

end
