class StaticPagesController < ApplicationController
  def home
    @activities = Activity.all
  end
end
