class Transaction < ActiveRecord::Base

  belongs_to :user
  belongs_to :account

  validates :amount_cents, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

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

end
