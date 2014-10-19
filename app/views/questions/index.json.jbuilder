json.array!(@questions) do |question|
  json.extract! question, :id, :authorId, :title, :content
  json.url question_url(question, format: :json)
end
