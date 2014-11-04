class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  has_many :authorizations

  def self.from_omniauth(auth, current_user)
    omniauth_attr = {
      :provider => auth.provider,
      :uid => auth.uid.to_s,
    }
    logger.info "----------------------------------"
    logger.info omniauth_attr
    logger.info "----------------------------------"

    authorization = Authorization.where(omniauth_attr).first_or_initialize
    if authorization.user.blank?
      logger.info "-----------------auth email : #{auth["info"]["email"]}"
      user = current_user || User.where('email = ?', auth["info"]["email"]).first
      if user.blank?
       user = User.new
       user.password = Devise.friendly_token[0,10]
       #user.name = auth.info.name
       user.email = auth.info.email
       user.save!
     end
     authorization.username = auth.info.nickname
     authorization.user_id = user.id
     authorization.save
   end
   authorization.user
 end
end
