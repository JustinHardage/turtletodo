class Worklog < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :task_id
  belongs_to :task, :foreign_key => "task_id"

  def total_time
    self.end_time = self.end_time or DateTime.now
    self.start_time = self.start_time or DateTime.now
    # self.end_time - self.start_time
    DateTime.now - DateTime.now
  end
end
