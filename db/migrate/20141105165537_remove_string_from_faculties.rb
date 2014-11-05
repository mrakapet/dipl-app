class RemoveStringFromFaculties < ActiveRecord::Migration
  def change
  	remove_column :faculties, :string, :string
  end
end
