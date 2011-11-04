class ChangeFieldsInSubjectStudents < ActiveRecord::Migration
  def up
    rename_column :subjects_students, :student_id, :user_id
    rename_column :subjects_students, :student_role, :user_role
    rename_table :subjects_students, :subjects_users
  end

  def down
  end
end
