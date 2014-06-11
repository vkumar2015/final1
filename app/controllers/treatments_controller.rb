class TreatmentsController < ApplicationController

  # Receive form submitted from /treatments/destroy
  def destroy
    treatment = Treatment.find_by("id" => params["id"])
    treatment.delete
    redirect_to "/treatments"
  end

  # Receive form submitted from /treatments/new
  def create
    Treatment.create("name" => params["name"], "treaturl" => params["url"])
    redirect_to "/treatments"
  end

  # Receive form submitted from /treatments/edit
  def update
    treatment = Treatment.find_by("id" => params["id"])
    treatment.update("treatname" => params["name"], "url" => params["url"])
    redirect_to "/treatments"
  end

end
