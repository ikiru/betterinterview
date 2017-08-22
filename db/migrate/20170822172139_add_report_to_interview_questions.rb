class AddReportToInterviewQuestions < ActiveRecord::Migration[5.1]
  def change
    add_reference :interview_questions, :report, foreign_key: true
  end
end
