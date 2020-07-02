require 'pg'

p "Setting up test database..."
def setup_test_database
  connection = connect_to_db
  connection.exec("TRUNCATE bookmarks;")
end
