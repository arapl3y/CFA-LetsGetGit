class PagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.lists.first.plans
    @list = current_user.lists.first
    @plan = Plan.new
    @all_plan = []

    Plan.all.each do |plan|
      if plan.title == nil
      else
        @all_plan << plan
      end
    end


    User.all.each do |user|
      if user.has_role? :admin
        @admin = user
        @admin_list = @admin.lists.first.plans
      end
    end


    @all_plan_order = @all_plan.sort.reverse[0..14]
    @uncompleted_plan = @all_plan.sort[0..2]
    @completed_plan = @all_plan.sort.reverse[0..2]
  end

end
