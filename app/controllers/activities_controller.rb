class ActivitiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @activities = current_user.activities.all.order(created_at: :desc)
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)
    if @activity.save
      flash[:success] = 'Your activity was successfully added!'
      redirect_to @activity
    else
      render :new
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find_by(id: params[:id])
    if @activity.update(activity_params)
      flash[:success] = 'Post successfully edited'
      redirect_to activities_path
    else
      render :edit
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    return unless current_user.id == @activity.user_id

    @activity.destroy
    flash[:success] = 'Activity deleted successfully!'
    redirect_back(fallback_location: root_path)
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :date, :duration)
  end
end
