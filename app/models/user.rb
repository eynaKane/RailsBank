class User < ApplicationRecord
  has_many :accounts, dependent: :destroy
  has_many :transactions, dependent: :destroy

  has_secure_password

  validates :fname, :lname, :email, :password_confirmation, presence: true
  validates :password, confirmation: true

  def savings_balance
    if transactions.where(account_id: 1).blank?
      0
    else
      transactions.where(account_id: 1).last.current_amount_cents
    end
  end

  def checking_balance
    if transactions.where(account_id: 2).blank?
      0
    else
      transactions.where(account_id: 2).last.current_amount_cents
    end
  end
end
