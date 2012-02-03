class TypeOfRemindersController < ApplicationController
  def index
    @type_of_reminders = TypeOfReminder.all
  end

  def show
    @type_of_reminder = TypeOfReminder.find(params[:id])
  end

  def new
    @type_of_reminder = TypeOfReminder.new
  end

  def create
    @type_of_reminder = TypeOfReminder.new(params[:type_of_reminder])
    if @type_of_reminder.save
      redirect_to @type_of_reminder, :notice => "Successfully created type of reminder."
    else
      render :action => 'new'
    end
  end

  def edit
    @type_of_reminder = TypeOfReminder.find(params[:id])
  end

  def update
    @type_of_reminder = TypeOfReminder.find(params[:id])
    if @type_of_reminder.update_attributes(params[:type_of_reminder])
      redirect_to @type_of_reminder, :notice  => "Successfully updated type of reminder."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @type_of_reminder = TypeOfReminder.find(params[:id])
    @type_of_reminder.destroy
    redirect_to type_of_reminders_url, :notice => "Successfully destroyed type of reminder."
  end
end
