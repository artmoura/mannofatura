json.extract! invoice, :id, :name, :due_date, :paid_date, :amount, :kind, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
