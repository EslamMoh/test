json.extract! billing, :id, :amount, :token, :reciep_id, :created_at, :updated_at
json.url billing_url(billing, format: :json)
