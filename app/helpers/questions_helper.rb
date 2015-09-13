module QuestionsHelper
  def can_edit(entity)
    if (current_user.admin || current_user.moderator || entity.user_id == current_user.id)
      return true
    else
      return false
  end
end
