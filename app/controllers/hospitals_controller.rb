class HospitalsController < ApplicationController

  def destroy
    hospital = Hospital.find_by("id" => params["id"])
    hospital.delete
    redirect_to "/hospitals"
  end

  # Receive form submitted from /hospitals/new
  def create
    Hospital.create("hospname" => params["name"] , "hcountry" => params["country"] , "hstate" => params["state"] , "hzip" => params["zip"] , "hcity" => params["city"]  , "hphotourl" => params["photourl"] , "hyear" => params["year"] , "haddress" => params["address"] , "htype" => params["type"] , "hphone" => params["phone"] , "hemail" => params["email"] , "hurl" => params["url"] , "hspecialization1" => params["specilization1"] , "hspecialization2" => params["specilization2"]  , "hbeds" => params["beds"] , "page_count" => 0 )
    redirect_to "/hospitals"
  end

  # Receive form submitted from /hospitals/edit
  def update
    hospital = Hospital.find_by("id" => params["id"])
    hospital.update("hospname" => params["name"] , "hcountry" => params["country"] , "hstate" => params["state"] , "hzip" => params["zip"] , "hcity" => params["city"]  , "hphotourl" => params["photourl"] , "hyear" => params["year"] , "haddress" => params["address"] , "htype" => params["type"] , "hphone" => params["phone"] , "hemail" => params["email"] , "hurl" => params["url"] , "hspecialization1" => params["specilization1"] , "hspecialization2" => params["specilization2"]  , "hbeds" => params["beds"] , "page_count" => hospital["page_count"] )
    redirect_to "/hospitals"
  end

end
