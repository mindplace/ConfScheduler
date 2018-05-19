class ConfAttendeesController < ApplicationController

  def create
    @conference = Conference.find_by(id: params[:conference_id])
    current_user.conf_attendees.find_or_create_by(conference_id: @conference.id)

    if current_user.conf_attendees.find_by(conference_id: @conference.id)
      flash[:notice] = "You've added this conference to your schedule."
    else
      flash[:error] = "Something went wrong."
    end
    
    redirect_to conference_path(url: @conference.url)
  end

end
