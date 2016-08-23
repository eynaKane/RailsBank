class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :account

  validates :amount_cents, presence: true, numericality: { greater_than_or_equal_to: 100 }
  validates_presence_of :transaction_name

  def withdraw?
    self.transaction_name == 'withdraw'
  end

  def deposit?
    self.transaction_name == 'deposit'
  end

  # def transaction_name
  #   self[:transaction_name].capitalize
  # end

  # def amount_cents
  #   Money.new(self[:amount_cents]).format
  # end

  # def current_amount_cents
  #   Money.new(self[:current_amount_cents]).format
  # end

  def self.calculate_current_amount_cents(user, account, transaction_name, amount_cents)
    Transaction.balance(user, account) + Transaction.amount(transaction_name, amount_cents)
  end

  def self.balance(user, account)
    account.id == 1 ? user.savings_balance : user.checking_balance
  end

  def self.amount(transaction_name, amount_cents)
    transaction_name == 'withdraw' ? -amount_cents : amount_cents
  end
end
