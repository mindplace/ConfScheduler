class ConferencesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :retrieve_conference, except: :index

  def index
    @conferences = Conference.all.includes(:events)
  end

  def show
    @events = @conference.events
  end

  private

  def retrieve_conference
    @conference = Conference.find_by(url: params[:url]) if params[:url]
    @conference ||= Conference.find_by(id: params[:id])
  end

end
