class CreateWorklogs < ActiveRecord::Migration
  def change
    create_table :worklogs do |t|
      t.integer :taskID
      t.datetime :startTime
      t.datetime :endTime

      t.timestamps
    end
  end
end
