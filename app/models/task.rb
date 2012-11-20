class Task < ActiveRecord::Base
  attr_accessible :name, :rank
  attr_protected :current_work_log, :create_date, :close_date
end
