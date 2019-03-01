module ApplicationHelper
  def youtube_video(url)
    render :partial => 'artists/video', :locals => { :url => url }
  end 

  def artist_avatar(url)
    render :partial => 'artists/photo', :locals => { :url => url }
  end
end
