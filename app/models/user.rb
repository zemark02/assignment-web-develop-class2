class User < ApplicationRecord
	has_many :posts

	def self.buildUser(userid)
		if(User.find_by(id:userid))
			User.create(id:userid)
		end
	end


end
