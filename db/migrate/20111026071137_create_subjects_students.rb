class CreateSubjectsStudents < ActiveRecord::Migration
  def change
    create_table :subjects_students do |t|
      t.integer :subject_id
      t.integer :student_id
      t.string :student_role

      t.timestamps
    end
  end
end
