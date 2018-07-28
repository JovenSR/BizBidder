class User < ApplicationRecord
  has_many :requests
  has_many :service_providers
end
