class MainController < ApplicationController
  def abc
  end

  def xxx
  end

  def welcome
  end

  def contact
    a = params[:id]
    @u = User.find(a)

    
  end

  def create
    message = params[:msg]
    userid = params[:user_id]
    User.buildUser(userid)
    Post.buildPost(userid,message)
  end

  def read
    userid = params[:user_id]
    @res = Post.readPost(userid.to_i)
  end
end
