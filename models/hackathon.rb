class Hackathon < ActiveRecord::Base
end

class User < ActiveRecord::Base
  has_secure_password
end
