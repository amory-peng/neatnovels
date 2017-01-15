json.array! @comments do |comment|
  json.extract! comment, :body, :created_at
  json.username comment.user.username
end
