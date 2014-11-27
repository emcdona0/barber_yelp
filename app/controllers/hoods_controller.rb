class HoodsController < ApplicationController
  def index
    @hoods = Hood.all
  end

  def show
    @hood = Hood.find(params[:id])
  end

  def new
    @hood = Hood.new
  end

  def create
    @hood = Hood.new
    @hood.name = params[:name]
    @hood.city = params[:city]
    @hood.state = params[:state]

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
