class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.includes(:reviews, :ratings)

    respond_to do |format|
      format.html # show.html.erb
      format.json do
        render :json => @bathrooms.to_json(:include => [:reviews, :ratings])
      end
    end

  end

  def show
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
