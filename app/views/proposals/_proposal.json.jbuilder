json.extract! proposal, :id, :description, :price, :accept, :created_at, :updated_at
json.url proposal_url(proposal, format: :json)
