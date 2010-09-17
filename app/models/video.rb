class Video < ActiveRecord::Base
  validates_presence_of :panda_video_id, :title

  def panda_video
    @panda_video ||= Panda::Video.find(panda_video_id)
  end
  
  def h264_encoding
    self.panda_video.encodings.find_by_profile_name("h264noresize")
  end
end
