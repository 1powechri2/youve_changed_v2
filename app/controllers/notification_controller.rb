class NotificationController < ApplicationController
  def create
    FriendNotifierMailer.inform(current_user, params[:email]).deliver_now
    flash[:notice] = "Successfully sent email"
    redirect_to root_path
  end
end
