class ChangeWorklogTimeType < ActiveRecord::Migration
  def change
    change_column :worklogs, :start_time, :time
    change_column :worklogs, :end_time, :time
  end
end
