class User < ActiveRecord::Base

  has_many :accounts
  has_many :transactions

  def fname
    self[:fname].capitalize
  end

  def savings_balance
    self.transactions.where(account_id: 1).last.current_amount_cents
  end

  def checking_balance
    self.transactions.where(account_id: 2).last.current_amount_cents
  end
end
