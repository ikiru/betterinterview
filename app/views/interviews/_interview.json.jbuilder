json.extract! interview, :id, :interviewnumber, :position_id, :interview_type_id, :interview_question, :interview_comments, :created_at, :updated_at
json.url interview_url(interview, format: :json)
