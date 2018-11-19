class CreateJoinTableCourseOffering < ActiveRecord::Migration[5.2]
  def change
    create_join_table :courses, :offerings do |t|
      # t.index [:course_id, :offering_id]
      # t.index [:offering_id, :course_id]
    end
  end
end
