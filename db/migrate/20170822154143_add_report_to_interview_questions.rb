class AddReportToInterviewQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :interview_questions, :report, :refernce
  end
end
