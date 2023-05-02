class UsersController < ApplicationController
  def index
    render({:template=> "userstemplate/index.html.erb"})
  end

  def show
    @url_username = params.fetch("username")

    @user = User.all.where({:username => @url_username}).at(0)
    
    render({:template=> "userstemplate/show.html.erb"})
  end
  
  def create
    u = User.new
    u.username =  params.fetch("input_username")
    u.save
    redirect_to("/users/" + u.username)
  end

  def update_user
    form_uname = params.fetch("form_username")
    old_uname = params.fetch("old_username")
    a = User.all.where({:username => old_uname}).at(0)

    a.username = form_uname

    a.save

    redirect_to("/users/" + a.username.to_s)
  end
end
