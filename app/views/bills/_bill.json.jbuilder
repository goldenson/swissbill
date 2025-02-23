json.extract! bill, :id, :name, :address, :npa, :city, :email, :phone, :iban, :created_at, :updated_at
json.url bill_url(bill, format: :json)
