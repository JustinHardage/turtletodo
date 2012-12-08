module TasksHelper
  def rational_to_minutes(time_diff)
    (time_diff * 24 * 60).truncate(2)
  end
end
