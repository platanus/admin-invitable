class HomeController < ApplicationController
  def index
  end

  def invite
    @email = params[:email]
    AdminUser.invite!(email: @email)
  end
end
