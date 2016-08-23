class User < ActiveRecord::Base

  has_many :accounts
  has_many :transactions

  has_secure_password

  validates :fname, :lname, :email, :password_confirmation, presence: true
  validates :password, confirmation: true

  # def fname
  #   self[:fname].capitalize
  # end

  def savings_balance
    unless self.transactions.where(account_id: 1).blank?
      self.transactions.where(account_id: 1).last.current_amount_cents
    else
      0
    end
  end

  def checking_balance
    unless self.transactions.where(account_id: 2).blank?
      self.transactions.where(account_id: 2).last.current_amount_cents
    else
      0
    end
  end
end
