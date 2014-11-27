class BarbersController < ApplicationController
  def index
    @barbers = Barber.all
  end

  def show
    @barber = Barber.find(params[:id])
  end

  def new
    @barber = Barber.new
  end

  def create
    @barber = Barber.new
    @barber.username = params[:username]
    @barber.first_name = params[:first_name]
    @barber.last_name = params[:last_name]
    @barber.telephone = params[:telephone]
    @barber.average_rating = params[:average_rating]

    if @barber.save
      redirect_to "/barbers", :notice => "Barber created successfully."
    else
      render 'new'
    end
  end

  def edit
    @barber = Barber.find(params[:id])
  end

  def update
    @barber = Barber.find(params[:id])

    @barber.username = params[:username]
    @barber.first_name = params[:first_name]
    @barber.last_name = params[:last_name]
    @barber.telephone = params[:telephone]
    @barber.average_rating = params[:average_rating]

    if @barber.save
      redirect_to "/barbers", :notice => "Barber updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @barber = Barber.find(params[:id])

    @barber.destroy

    redirect_to "/barbers", :notice => "Barber deleted."
  end
end
