json.extract! interview_question, :id, :question, :created_at, :updated_at
json.url interview_question_url(interview_question, format: :json)
