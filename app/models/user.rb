class User < ActiveRecord::Base

  has_many :accounts
  has_many :transactions

  def fname
    self[:fname].capitalize
  end

end
