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
    if !User.find_by(id:userid)
      User.create(id:userid)
    end
    Post.create(user_id:userid,msg:message)
  end

  def read

    userid = params[:user_id]
    a = User.find(userid)
    @s = ""
    co = 1
    for i in User.find(userid).posts do
      @s = "Post #{co} : #{i.msg} \n\n"
      co = co+1
    end
  end
end
