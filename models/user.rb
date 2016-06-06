class User < ActiveRecord::Base
  has_secure_password
  ## NEEDS T.STRING :PASSWORD_DIGEST IN MIGRATION ##
  ## CREATE A MIGRATION ##
  ## DOCUMENTATION ##
end
