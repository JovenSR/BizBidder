json.extract! request, :id, :name, :description, :budget, :proposalDeadline, :eventDate, :address, :city, :province, :category, :status, :created_at, :updated_at
json.url request_url(request, format: :json)
