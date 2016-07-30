class User < ActiveRecord::Base


   # def self.from_omniauth(auth_hash)
   #    unless user = User.find_by_email(auth_hash['info']['email'])
   #      email = auth_hash['info']['email']
   #      provider = auth_hash['provider']
   #      uid = auth_hash['uid']
   #      secret = auth_hash['secret']
   #      details = auth_hash
   #      token = auth_hash['credentials'].try(:"[]", "token")
   #      user = User.new :email => email, :details => details, :uid => uid, :provider => provider, :secret => secret, :oauth_token => token
   #      user.save(:validate => false)
   #    end
   #    return user
   #  end



   def self.from_omniauth(auth_hash)
   	unless user = User.find_by_email(auth_hash['info']['email'])
   		email = auth_hash['info']['email']
   		uid = auth_hash['uid']
   		user.first_name = auth_hash["first_name"]
   		user.last_name = auth_hash["last_name"]
   		user = User.new :email => email, :uid => uid
   		user.save(:validate => false)
   	end
   	return user
   end
       



# def self.create_with_omniauth(auth)
#   create! do |user|
#     user.first_name = auth["user_info"]["first_name"]
#     user.last_name = auth["user_info"]["last_name"]
#     user.email = auth["user_info"]["email"]
#   	user.fb_uid = auth['uid']
#   	user.fb_token = auth['credentials']['token']

#   end
# end


end
