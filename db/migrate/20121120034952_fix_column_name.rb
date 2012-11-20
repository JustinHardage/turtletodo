class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :tasks, :closeDate, :close_date
    rename_column :tasks, :createDate, :create_date
    rename_column :tasks, :currentWorkLog, :current_work_log
  end
end
