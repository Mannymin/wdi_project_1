class SessionsController < ApplicationController
  def new
  end
  def create
     user = Users.find_by_email(params[:email])
     binding.pry
     success = users.authenticate(params[:password])
  if success
          session[:user_id] = user.id

    redirect_to root_path, :notice => "Logged in!"
  else
    flash.now.alert = "Invalid email or password"
    render "new"
  end
end

     def destroy
       session[:user_id] = nil
       redirect_to root_url, :notice => "Logged out!"
     end
end
