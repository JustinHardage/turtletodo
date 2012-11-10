class Worklog < ActiveRecord::Base
  attr_accessible :endTime, :startTime, :taskID
end
