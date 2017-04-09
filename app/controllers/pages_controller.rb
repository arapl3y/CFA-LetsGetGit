class PagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.lists.first.plans
    @list = current_user.lists.first
    @plan = Plan.new
    @all_plan = Plan.all

    User.all.each do |user|
      if user.has_role? :admin
        @admin = user
        @admin_list = @admin.lists.first.plans
      end
    end

  end

end
