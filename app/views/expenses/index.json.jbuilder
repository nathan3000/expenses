json.array!(@expenses) do |expense|
  json.extract! expense, :amount, :description, :whofor, :urgency, :user_id
  json.url expense_url(expense, format: :json)
end