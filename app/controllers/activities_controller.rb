class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  # before_action :only_current_user

  def index
    @activities = Activity.all
  end

  def new
    @activity = Activity.new
  end

  def create
    # @activity = Activity.new(activity_params)
    # if @activity.save
    #   flash[:success] = 'You have created your activity!'
    #   redirect_to activities_path(@activity.id)
    # else
    #   render :new
    # end

    @activity = current_user.activities.build(activity_params)
    if @activity.save
      flash[:success] = 'You have created your activity!'
      redirect_to activities_path(@activity.id)
    else
      flash[:error] = 'You have an error, please try again!'
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @activity = @user.activity
  end

  def update
    @user = User.find(params[:user_id])
    @activity = @user.activity
    if @activity.update_attributes(activity_params)
      flash[:success] = 'You have updated your activity!'
      redirect_to activity_path(id: params[:user_id])
    else
      render action: :edit
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def destroy
    @activity = Activity.find(params[:id])
    return unless current_user.id == @article.user_id

    @activity.destroy
    flash[:success] = 'You have deleted your activity!'
    redirect_to user_path(id: params[:user_id]) 
  end

  private
    def activity_params
      params.require(:activity).permit(:name, :date, :duration)
    end

    # def only_current_user
    #   @user = User.find( params[:user_id] )
    #   redirect_to(root_url) unless @user == current_user
    # end
end
