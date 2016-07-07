class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable
  has_and_belongs_to_many :roles
  def self.from_omniauth(auth)
    data = auth.info
    user = User.where(:email => data.email).first rescue nil

    unless user
      user = User.new(provider: auth.provider, uid: auth.uid, email: data.email, password: Devise.friendly_token[0,20], first_name:auth.info.name.split(" ")[0],last_name:auth.info.name.split(" ")[1])
      # user.skip_confirmation!
      # profile=user.build_profile
      user.save!(validate: false)
    end
    user
  end
   def is?(role)
    return !!self.roles.find_by_name(role.to_s.camelize)
  end
end
