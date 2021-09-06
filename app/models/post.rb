class Post < ApplicationRecord
  belongs_to :user

  def self.buildPost(userid , message)
    Post.create(user_id:userid.to_i,msg:message)
  end

  def self.readPost(userid)
      if(!Post.find_by(user_id:userid))
        return nil
      else
        res = []
        co = 1
        for i in Post.where(user_id:userid) do
          res.push("Post #{co} : #{i.msg} ")
          co = co+1
        end

        return res
      end
  end
end