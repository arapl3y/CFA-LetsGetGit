json.extract! plan, :id, :title, :user_id, :list_id, :completion, :created_at, :updated_at
json.url plan_url(plan, format: :json)
