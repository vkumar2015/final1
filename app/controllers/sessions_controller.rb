class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    redirect_to "/", :notice => "Good bye"
  end

  def authenticate
    the_user = User.find_by("uname" => params["username"])
    if the_user != nil
      if the_user["upassword"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/", :notice => "Welcome back"
      else
        logger.debug "No welcome"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

end
