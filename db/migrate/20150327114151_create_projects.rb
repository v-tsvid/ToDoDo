class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.datetime :deadline
      t.integer :priority
      t.boolean :is_done

      t.timestamps
    end
  end
end
