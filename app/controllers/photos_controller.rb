class PhotosController < ApplicationController
  def index
    render({:template => "photostemplate/index.html.erb"})
  end

  def show
    @photo_id = params.fetch("linkphotoid")

    @photo = Photo.all.where({:id => @photo_id}).at(0)
    
    render({:template => "photostemplate/show.html.erb"})
  end
end
