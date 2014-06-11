class UsersController < ApplicationController

  def show
    @user = User.find_by("id" => params["id"])

    logger.debug @user["id"].inspect
    logger.debug cookies["user_id"].inspect

    if (@user["id"] != cookies["user_id"].to_i)
      redirect_to "/", :notice => "Something's wrong!"
    end

  end

  def create
    existing_user = User.find_by("uname" => params["username"])
    if existing_user == nil
      User.create("uname" => params["username"] , "upassword" => params["password"], "uemail" => params["name"] , "ucountry" => params["country"])
      redirect_to "/"
    else
      @message = "That UserName is taken. Try again."
      render "new"
    end
  end

  def update
    the_user = User.find_by(params["id"])
    the_user.update("uname" => params["username"], "upassword" => params["upassword"], "uemail" => params["email"] , "ucountry" => params["country"])
    redirect_to '/users/#{the_user["id"]}'
  end

end
