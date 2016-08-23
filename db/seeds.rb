# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ana = User.create(fname: 'Ana', lname: 'Whoa', email: 'awhoa@email.com')

savings = Account.create(account_name: 'savings')
checking = Account.create(account_name: 'checking')

trans1 = Transaction.create(user_id: 1, account_id: 1, transaction_name: 'deposit', amount_cents: 100000, current_amount_cents: 100000)
trans1 = Transaction.create(user_id: 1, account_id: 2, transaction_name: 'deposit', amount_cents: 200000, current_amount_cents: 200000)
