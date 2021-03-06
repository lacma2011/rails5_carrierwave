class AdsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @ads = Ad.all
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def save
    # update record
    id = params[:id]
    title = params[:title]
    Ad.find_by(id: id)&.update_attributes(title: title)

    # redirect back to "edit"
    current_route = "/ads/edit/" + id.to_s 
    redirect_to current_route and return
  end
end
