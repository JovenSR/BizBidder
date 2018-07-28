json.extract! service_provider, :id, :companyName, :street, :city, :province, :postalCode, :email, :phone, :serviceType, :website, :license, :avatar, :created_at, :updated_at
json.url service_provider_url(service_provider, format: :json)
