class UndoBlarg < ActiveRecord::Migration
  def down
    rename_column :tasks, :current_work_log, :integer
  end
end
