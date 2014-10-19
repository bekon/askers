json.array!(@answers) do |answer|
  json.extract! answer, :id, :authorId, :questionId, :content
  json.url answer_url(answer, format: :json)
end
