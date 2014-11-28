require 'open-uri'
require 'json'

class BarbershopsController < ApplicationController
  def index
    @barbershops = Barbershop.all
  end

  def show
    @barbershop = Barbershop.find(params[:id])
    @url_safe_address = URI.encode(@barbershop.address)
    @url_of_data = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}"
    @raw_data = open(@url_of_data).read
    @parsed_data = JSON.parse(@raw_data)

    @latitude = @parsed_data["results"][0]["geometry"]["location"]["lat"]
    @longitude = @parsed_data["results"][0]["geometry"]["location"]["lng"]
  end

  def new
    @barbershop = Barbershop.new
  end

  def create
    @barbershop = Barbershop.new
    @barbershop.name = params[:name]
    @barbershop.address = params[:address]
    @barbershop.hood_id = params[:hood_id]
    @barbershop.telephone = params[:telephone]

    if @barbershop.save
      redirect_to "/barbershops", :notice => "Barbershop created successfully."
    else
      render 'new'
    end
  end

  def edit
    @barbershop = Barbershop.find(params[:id])
  end

  def update
    @barbershop = Barbershop.find(params[:id])

    @barbershop.name = params[:name]
    @barbershop.address = params[:address]
    @barbershop.hood_id = params[:hood_id]
    @barbershop.telephone = params[:telephone]

    if @barbershop.save
      redirect_to "/barbershops", :notice => "Barbershop updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @barbershop = Barbershop.find(params[:id])

    @barbershop.destroy

    redirect_to "/barbershops", :notice => "Barbershop deleted."
  end
end
