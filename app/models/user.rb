class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :reviews
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:omniauthable
  has_and_belongs_to_many :roles
  validates_presence_of :email
  has_many :posts
  has_many :comments
 attr_accessor :full_name

  # Getter
  def full_name
    [first_name, last_name].join(' ')
  end

  # Setter
  def full_name=(name)
    split = name.split(' ', 2)
    self.first_name = split.first
    self.last_name = split.last
  end
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
  
  def admin?
    self.roles.find_by_name("admin").present? ? true : false
  end
def admin
  # has_role?(:admin)
end
end
