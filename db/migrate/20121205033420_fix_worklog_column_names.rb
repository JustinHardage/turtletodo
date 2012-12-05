class FixWorklogColumnNames < ActiveRecord::Migration
  def change
    rename_column :worklogs, :endTime, :end_time
    rename_column :worklogs, :startTime, :start_time
    rename_column :worklogs, :taskID, :task_id
  end
end
