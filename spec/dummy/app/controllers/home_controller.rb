class HomeController < ApplicationController
  def index
  end

  def invite
    AdminUser.invite!(email: params[:email])
    render text: "invitation was sent to #{params[:email]}"
  end
end
