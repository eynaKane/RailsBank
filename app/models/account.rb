class Account < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :transactions, through: :users

  def account_name
    self[:account_name].capitalize
  end
end
