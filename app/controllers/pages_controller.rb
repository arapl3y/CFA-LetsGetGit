class PagesController < ApplicationController
  def index
    @plans = current_user.lists.first.plans
  end
end
