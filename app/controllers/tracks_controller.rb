class TracksController < ApplicationController

  authorize_resource
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  
  def new
    @track = Track.new
  end

  def create
    @track = Track.create(track_params)
    @track.user_id = current_user.id

    if @track.save
      redirect_to user_path(current_user)
    else
      render 'new'
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    track = Track.find(params[:id])
    if track.update(track_params)
      redirect_to track_path(track)
    else
      render 'edit'
    end
  end

  def show
    @track = Track.find(params[:id])
    @comment = Comment.new
    if user_signed_in?
      @user = User.find(current_user)
    end
    @comments = Comment.where(track_id: @track)
  end

  def destroy
    track = Track.find(params[:id])
    track.destroy
    redirect_to :back
  end

  private

  def track_params
    params.require(:track).permit(:name, :track, :track_image)
  end
end