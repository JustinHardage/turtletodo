class Worklog < ActiveRecord::Base
  attr_protected :end_time, :start_time, :task_id
  belongs_to :task, :foreign_key => "task_id"

  def elapsed_time
    if self.start_time.nil? then return 0 end
    self.end_time = self.end_time.nil? ? DateTime.now : self.end_time 
    # self.start_time = self.start_time.nil? ? now : self.start_time
    end_time - start_time
  end

  def elapsed_hours
    (elapsed_time / 60 / 60 ).to_f.round(2)
  end

  def close!
    self.end_time = DateTime.now
  end
end
