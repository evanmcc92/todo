class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :title
      t.string :description
      t.boolean :complete, :default => false
      t.datetime :reminder, :default => nil
      t.datetime :due, :default => nil
      t.string :priority

      t.timestamps
    end
  end
end
