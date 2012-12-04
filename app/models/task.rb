class Task < ActiveRecord::Base
  attr_accessible :name, :rank, :current_work_log, :create_date, :close_date

  def punch_in
    true
  end

  def punch_out
    true
  end

  def punch
    is_punched_in? ? punch_out : punch_in
  end

  def is_punched_out?
    :current_work_log.blank?
  end

  def is_punched_in?
    # a more accurate method might be 
    # SELECT close_date FROM worklog WHERE id = task.id 
    # ORDER BY open_date DESC LIMIT 1
    !is_punched_out?
  end

  def get_punch_direction
    true ? "In" : "Out"
  end

end
