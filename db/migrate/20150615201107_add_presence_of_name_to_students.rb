class AddPresenceOfNameToStudents < ActiveRecord::Migration
  def change
    change_column :students, :name, :string, null: false
  end
end
