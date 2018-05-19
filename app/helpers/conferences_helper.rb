module ConferencesHelper

  def attending_conference?(conference)
    return false unless current_user
    conference.conf_attendees.where(user_id: current_user.id).present?
  end

end
