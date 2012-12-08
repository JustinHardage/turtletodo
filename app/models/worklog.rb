class Worklog < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :task_id
  belongs_to :task, :foreign_key => "task_id"

  def elapsed_days
    if start_time.nil? then return nil
    # self.end_time = self.end_time.nil? ? DateTime.now : self.end_time
    self.start_time = self.start_time.nil? ? DateTime.now : self.start_time
    # self.end_time - self.start_time
    end_time - start_time
  end

  def elapsed_time
    elapsed_days
  end
end
