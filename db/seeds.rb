ana = User.create!(
  fname: 'Ana',
  lname: 'Whoa',
  email: 'awhoa@email.com',
  password: 'password',
  password_confirmation: 'password'
)

savings = Account.create!(account_name: 'savings')

checking = Account.create!(account_name: 'checking')

Transaction.create!(
  user: ana,
  account: savings,
  transaction_name: 'deposit',
  amount_cents: 100_000,
  current_amount_cents: 100_000
)

Transaction.create!(
  user: ana,
  account: checking,
  transaction_name: 'deposit',
  amount_cents: 200_000,
  current_amount_cents: 200_000
)
