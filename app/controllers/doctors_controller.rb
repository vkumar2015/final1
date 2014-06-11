class DoctorsController < ApplicationController

  def destroy
    doctor = Doctors.find_by("id" => params["id"])
    doctor.delete
    redirect_to "/doctors"
  end

  # Receive form submitted from /doctors/new
  def create
    Doctor.create("dname" => params["name"] , "dprofile" => params["profile"] , "dage" => params["age"] , "dphotourl" => params["photourl"] , "dspecialization1" => params["specilization1"] , "dspecialization2" => params["specilization2"]  , "dwork" => params["work"] , "deducation" => params["education"] , "page_count" => 0 )
    redirect_to "/doctors"
  end

  # Receive form submitted from /doctors/edit
  def update
    doctor = Doctor.find_by("id" => params["id"])
    doctor.update("dname" => params["name"] , "dprofile" => params["profile"] , "dage" => params["age"] , "dphotourl" => params["photourl"] , "dspecialization1" => params["specilization1"] , "dspecialization2" => params["specilization2"]  , "dwork" => params["work"] , "deducation" => params["education"] , "page_count" => 0 )
    redirect_to "/doctors"
  end

end
