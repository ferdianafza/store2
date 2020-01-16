json.extract! invoice, :id, :order_id_id, :order, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
