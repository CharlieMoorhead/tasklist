class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :completed
      t.date :date

      t.timestamps
    end
  end
end
