class DaysController < ApplicationController
  expose(:day)
  expose(:days)
  expose(:date) { params[:month] ? Date.parse(params[:month]) : Date.today }
  expose(:header) { day.try(:created_at) || params[:header] }

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    if day.save
      redirect_to day, notice: 'Day was successfully created.'
    else
      render :new
    end
  end

  def update
    if day.update_attributes(params[:day])
      redirect_to day, notice: 'Day was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    day.destroy
    redirect_to days_url
  end

end
