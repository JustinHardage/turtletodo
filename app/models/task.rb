class Task < ActiveRecord::Base
  attr_accessible :closeDate, :createDate, :currentWorkLog, :name, :rank
end
