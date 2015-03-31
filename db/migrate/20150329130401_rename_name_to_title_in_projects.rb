class RenameNameToTitleInProjects < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
  	  t.rename :name, :title
  	end
  end
end
