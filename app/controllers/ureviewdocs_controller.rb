class UreviewdocsController < ApplicationController

  def create
    Ureviewdoc.create("movie_id" => params["movie_id"],
                  "rating" => params["rating"],
                  "content" => params["content"])
    redirect_to "/movies/#{params["movie_id"]}", :notice => "Thanks for your review!"

  end


end

#Ureviewdoc:
#  - user_id: integer
#  - doc_id: integer
#  - doc_urating: integer
#  - doc_ucontent: text
#  - doc_uphoto1: string
#  - doc_ureco: integer
#  - created_at: datetime
