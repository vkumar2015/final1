class UreviewhospsController < ApplicationController

  def create
    Ureviewhosp.create("movie_id" => params["movie_id"],
                  "rating" => params["rating"],
                  "content" => params["content"])
    redirect_to "/movies/#{params["movie_id"]}", :notice => "Thanks for your review!"

  end


end

#Ureviewhosp:
#  - user_id: integer
#  - hosp_id: integer
#  - hosp_urating: integer
#  - hosp_ucontent: text
#  - hosp_uphoto1: string
#  - hosp_ureco: integer
#  - created_at: datetime
