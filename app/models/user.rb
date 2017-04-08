class User < ApplicationRecord
  rolify
  after_create :assign_default_role, :create_todo
  has_many :plans, :Uddependent => :destroy
  has_many :lists, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  def assign_default_role
    self.add_role(:student) if self.roles.blank?
  end

  def create_todo
    id = self.id

    @list = List.create(user_id: id, admin: false, plan_type: false)
    @plan = Plan.create(title:nil, user_id: id, list_id: @list.id)

  end

  def create_checklist
    id = self.id
    @list = List.new(user_id: id, admin: false, plan_type: true)
  end

end
