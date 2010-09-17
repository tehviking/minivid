require 'spec_helper'

describe Video do
  it "is not valid without a panda video ID or title" do
    Video.new.should_not be_valid
  end
  
  it "is not valid without a panda video ID" do
    Video.new(:title => "Awesome video").should_not be_valid
  end
    
  it "is not valid without a title" do
    Video.new(:panda_video_id => "1234").should_not be_valid
  end
  
  it "is valid with a panda video ID and title" do
    Video.new(:panda_video_id => "1234", :title => "Awesome video").should be_valid
  end
end
