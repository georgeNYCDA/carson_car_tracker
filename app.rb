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

# Define a minimal database schema
# Everytime the script is run it clears the databse, this 
# is okay while working on the carson's request.
ActiveRecord::Schema.define do
  create_table :cars, force: true do |t|
    t.string :name
    t.string :color
  end

  # Create more tables here


end

# Define the models and relationships
class Car < ActiveRecord::Base

end

class Customer < ActiveRecord::Base
 
end

class Transaction < ActiveRecord::Base

end

# Create a few records...
# or import that CSV and create the appropriate records off of it. 


# to let you use the terminal to CRUD the database. 
binding.pry