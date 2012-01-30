class AccidentsController < ApplicationController
  def index
    @accidents = Accident.all
  end

  def show
    @accident = Accident.find(params[:id])
  end

  def new
    @accident = Accident.new
  end

  def create
    @accident = Accident.new(params[:accident])
    if @accident.save
      redirect_to @accident, :notice => "Successfully created accident."
    else
      render :action => 'new'
    end
  end

  def edit
    @accident = Accident.find(params[:id])
  end

  def update
    @accident = Accident.find(params[:id])
    if @accident.update_attributes(params[:accident])
      redirect_to @accident, :notice  => "Successfully updated accident."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @accident = Accident.find(params[:id])
    @accident.destroy
    redirect_to accidents_url, :notice => "Successfully destroyed accident."
  end
end
