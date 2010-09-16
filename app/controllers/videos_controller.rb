class VideosController < ApplicationController
  def show
    @video = Video.find(params[:id])
    @original_video = @video.panda_video
    @h264_encoding = @original_video.encodings.find_by_profile_name("h264noresize")
  end

  def new
    @video = Video.new
    profile = Panda::Profile.create()
  end

  def create
    @video = Video.create!(params[:video])
    redirect_to :action => :show, :id => @video.id 
  end
  
  def destroy
    @video = Video.find(params[:id])
    panda_video = Panda::Video.find(@video.panda_video_id)
    panda_video.delete
    @video.destroy
    redirect_to :videos_path
  end
end
