class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @original_video = @video.panda_video
    @h264_encoding = @original_video.encodings.find_by_profile_name("h264")
  end

  def new
    @video = Video.new
    profile = Panda::Profile.create(:preset_name => "60sec")
  end

  def create
    @video = Video.create!(params[:video])
    redirect_to :action => :show, :id => @video.id 
  end
end
