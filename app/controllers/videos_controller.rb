class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @original_video = @video.panda_video
    @h264_encoding = @original_video.encodings.find_by_profile_name("h264")
  end

  def new
    @video = Video.new
    profile = "aee71954b75511c03e81e58d221658c6"
  end

  def create
    @video = Video.create!(params[:video])
    redirect_to :action => :show, :id => @video.id 
  end
end
