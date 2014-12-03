require 'time'
require 'date'

class WorksAtsController < ApplicationController
  def index
    @works_ats = WorksAt.all
  end

  def show
    @works_at = WorksAt.find(params[:id])
  end

  def new
    @works_at = WorksAt.new
  end

  def create
    @works_at = WorksAt.new
    @works_at.barbershop_id = params[:barbershop_id]
    @works_at.barber_id = params[:barber_id]
    @works_at.start_time = DateTime.strptime(params[:start_time], '%H%M')
    @works_at.end_time = DateTime.strptime(params[:end_time], '%H%M')
    @works_at.day_of_week = params[:day_of_week]

    if @works_at.save
      redirect_to "/works_ats", :notice => "Works at created successfully."
    else
      render 'new'
    end
  end

  def edit
    @works_at = WorksAt.find(params[:id])
  end

  def update
    @works_at = WorksAt.find(params[:id])

    @works_at.barbershop_id = params[:barbershop_id]
    @works_at.barber_id = params[:barber_id]
    @works_at.start_time = params[:start_time]
    @works_at.end_time = params[:end_time]
    @works_at.day_of_week = params[:day_of_week]

    if @works_at.save
      redirect_to "/works_ats", :notice => "Works at updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @works_at = WorksAt.find(params[:id])

    @works_at.destroy

    redirect_to "/works_ats", :notice => "Works at deleted."
  end
end
