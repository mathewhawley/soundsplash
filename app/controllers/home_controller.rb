class HomeController < ApplicationController
  def index
    @tracks = Track.all.order('created_at DESC')
    @users = User.all.order('created_at DESC')
  end
end