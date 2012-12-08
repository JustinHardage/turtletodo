class Worklog < ActiveRecord::Base
  attr_accessible :end_time, :start_time, :task_id
  belongs_to :task, :foreign_key => "task_id"

  def total_time
    end_time = end_time or DateTime.now
    start_time = start_time or DateTime.now
    end_time  - start_time
  end
end
