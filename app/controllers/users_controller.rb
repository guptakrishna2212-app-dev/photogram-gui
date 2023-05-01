class UsersController < ApplicationController
  def index
    render({:template=> "userstemplate/index.html.erb"})
  end

  def show
    @url_username = params.fetch("username")

    @user = User.all.where({:username => @url_username}).at(0)
    
    render({:template=> "userstemplate/show.html.erb"})
  end
end
