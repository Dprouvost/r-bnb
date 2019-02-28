module ApplicationHelper
  def youtube_video(url)
    render :partial => 'artists/video', :locals => { :url => url }
  end 
end
