class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :interviewnumber
      t.references :position, foreign_key: true
      t.references :interview_type, foreign_key: true
      t.reference :interview_question
      t.string :interview_comments

      t.timestamps
    end
  end
end
