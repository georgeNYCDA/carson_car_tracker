# Based on http://www.jonathanleighton.com/articles/2011/awesome-active-record-bug-reports/ 

# Run this script with `$ pry app.rb`
require 'sqlite3'
require 'active_record'

# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'carson.sqlite'
)

# Define the models and relationships
class Car < ActiveRecord::Base

end

class Customer < ActiveRecord::Base
 
end

class Transaction < ActiveRecord::Base

end

# Everytime the script is run it clears the database, this 
# is okay while working on carson's request.
Car.destroy_all
Customer.destroy_all
Transaction.destroy_all

# Create a few records...
# or import that CSV and create the appropriate records off of it. 


# to let you use the terminal to CRUD the database. 
binding.pry
