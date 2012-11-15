class Task < ActiveRecord::Base
  attr_accessible :name, :rank
  attr_protected :currentWorkLog, :createDate, :closeDate
end
