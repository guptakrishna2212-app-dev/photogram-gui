class CommentsController < ApplicationController
  def new_comment
    a = Comment.new
    a.photo_id = params.fetch("formphotoid")
    a.author_id = params.fetch("formauthorid")
    a.body = params.fetch("formcomment")
    a.save
    redirect_to("/photos/" + a.photo_id.to_s)
  end
end
