json.extract! report, :id, :issue, :created_at, :updated_at
json.url report_url(report, format: :json)
