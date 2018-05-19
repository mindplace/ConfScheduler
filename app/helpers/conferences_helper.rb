module ConferencesHelper

  def attending_conference?(conference)
    return unless current_user
    conference.conf_attendees.where(user_id: current_user.id).count != 0
  end

  def not_attending_conference?(conference)
    return unless current_user
    !attending_conference?(conference)
  end

end
