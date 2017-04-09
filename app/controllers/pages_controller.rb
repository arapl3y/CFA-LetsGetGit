class PagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @plans = current_user.lists.first.plans
    @list = current_user.lists.first
    @plan = Plan.new
    @all_plan = Plan.all
    @all_plan_order = @all_plan.order(:id).reverse_order.limit(15)
  end

end
