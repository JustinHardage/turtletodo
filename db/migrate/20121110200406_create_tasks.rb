class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :rank
      t.string :name
      t.datetime :createDate
      t.datetime :closeDate
      t.integer :currentWorkLog

      t.timestamps
    end
  end
end
