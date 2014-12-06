require 'open-uri'
require 'json'

class HoodsController < ApplicationController

  def index
    @hoods = Hood.all
    @barbershops = Barbershop.all
  end

  def show
    @hood = Hood.find(params[:id])
    @barbershops = Barbershop.all
  end

  def new
    @hood = Hood.new
  end

  def create
    @hood = Hood.new
    @hood.name = params[:name]
    @hood.city = params[:city]
    @hood.state = params[:state]
    # @hood.coords = @hood.name+@hood.city+@hood.state
    # @url_safe_address = URI.encode(@hood.coords)
    # @url_of_data = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}"
    # @raw_data = open(@url_of_data).read
    # @parsed_data = JSON.parse(@raw_data)
    # @latitude = @parsed_data["results"][0]["geometry"]["location"]["lat"]
    # @longitude = @parsed_data["results"][0]["geometry"]["location"]["lng"]
    @hood.latitude = params[:latitude]
    @hood.longitude = params[:longitude]

    if @hood.save
      redirect_to "/hoods", :notice => "Hood created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hood = Hood.find(params[:id])
  end

  def update
    @hood = Hood.find(params[:id])

    @hood.name = params[:name]
    @hood.city = params[:city]
    @hood.state = params[:state]
    # @url_safe_address = URI.encode(%{@hood.name} + %{@hood.city} + %{@hood.state})
    # @url_of_data = "http://maps.googleapis.com/maps/api/geocode/json?address=#{@url_safe_address}"
    # @raw_data = open(@url_of_data).read
    # @parsed_data = JSON.parse(@raw_data)
    # @latitude = @parsed_data["results"][0]["geometry"]["location"]["lat"]
    # @longitude = @parsed_data["results"][0]["geometry"]["location"]["lng"]
    @hood.latitude = params[:latitude]
    @hood.longitude = params[:longitude]

    if @hood.save
      redirect_to "/hoods", :notice => "Hood updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @hood = Hood.find(params[:id])

    @hood.destroy

    redirect_to "/hoods", :notice => "Hood deleted."
  end
end
