class PhotosController < ApplicationController
  def index
    render({:template => "photostemplate/index.html.erb"})
  end

  def show
    @photo_id = params.fetch("linkphotoid")

    @photo = Photo.all.where({:id => @photo_id}).at(0)

    render({:template => "photostemplate/show.html.erb"})
  end

  def bye

    the_id = params.fetch("toast_id")

    matching_photo = Photo.all.where({ :id => the_id}).at(0)

    matching_photo.destroy

    redirect_to("/photos")

  end

  def create
    input_image=params.fetch("image_url")
    input_caption=params.fetch("caption_text")
    input_userid=params.fetch("ownerid_text")

    a_new_photo = Photo.new
    a_new_photo.image = input_image
    a_new_photo.caption = input_caption
    a_new_photo.owner_id = input_userid

    a_new_photo.save
    
    redirect_to("/photos/"+ a_new_photo.id.to_s)
  end

end
