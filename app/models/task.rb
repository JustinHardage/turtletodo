class Task < ActiveRecord::Base
  attr_accessible :name, :rank, :current_work_log, :create_date, :close_date
  has_many :worklogs

  def punch_in
    newlog = self.worklogs.build(:start_time => DateTime.now)
    newlog.save
    self.current_work_log = newlog.id
    self.save
  end

  def punch_out
    # throw exception if :current_work_log doesn't exist?
    oldlog = Worklog.find(current_work_log)
    oldlog.end_time = DateTime.now
    current_work_log = nil
    oldlog.save
    save
  end

  def punch
    is_punched_in? ? punch_out : punch_in
  end

  def is_punched_out?
    current_work_log.nil?
  end

  def is_punched_in?
    !is_punched_out?
  end

  def get_punch_direction
    is_punched_out? ? "In" : "Out"
  end

end
