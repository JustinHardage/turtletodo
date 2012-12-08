module TasksHelper
  def rational_to_minutes(time_diff)
    ((time_diff or 0) * 24 * 60).truncate
  end
end
