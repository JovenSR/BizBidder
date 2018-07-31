class User < ApplicationRecord
  has_secure_password
  has_many :requests
  has_many :service_providers
  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
                                                  BCrypt::Password.create(string, cost: cost)
  end
end
