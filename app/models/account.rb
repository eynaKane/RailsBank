class Account < ActiveRecord::Base

  has_many :users
  has_many :transactions, through: :users

  def account_name
    self[:account_name].capitalize
  end
end
