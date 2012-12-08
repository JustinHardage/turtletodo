class Worklog < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :task_id
  belongs_to :task, :foreign_key => "task_id"

  def elapsed_time
    self.end_time = self.end_time.nil? ? DateTime.now : self.end_time
    self.start_time = self.start_time.nil? ? DateTime.now : self.start_time
    # self.end_time - self.start_time
    test_time = DateTime.now
    test_time - test_time
  end
end
