class User < ApplicationRecord
  rolify
  after_create :assign_default_role, :create_todo
  has_many :plans, :dependent => :destroy
  has_many :lists, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

         def self.from_omniauth(auth)
           where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
             user.email = auth.info.email
             user.password = Devise.friendly_token[0,20]
             # user.name = auth.r info.name   # assuming the user model has a name
             # user.image = auth.info.image # assuming the user model has an image
             # If you are using confirmable and the provider(s) you use validate emails,
             # uncomment the line below to skip the confirmation emails.
             # user.skip_confirmation!
           end
         end

         def self.new_with_session(params, session)
           super.tap do |user|
            if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
            user.email = data["email"] if user.email.blank?
              end
            end
         end



  def assign_default_role
    self.add_role(:student) if self.roles.blank?
  end

  def create_todo
    id = self.id
    @list = List.new(user_id: id, admin: false, plan_type: false)
  end

  def create_checklist
    id = self.id
    @list = List.new(user_id: id, admin: false, plan_type: true)
  end

end
