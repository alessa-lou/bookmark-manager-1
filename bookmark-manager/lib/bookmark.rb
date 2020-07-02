require 'pg'

class Bookmark

  def self.all
    
    connection = connect_to_db
    result = connection.exec('SELECT * FROM bookmarks')
    result.map { |bookmark| {:url => bookmark['url'], :title => bookmark['title']} }

  end

  def self.add(url, title)

    connection = connect_to_db
    result = connection.exec("INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}');")

  end

end

def connect_to_db

  user = 'postgres'
  password = '123'

  if ENV['ENVIRONMENT'] == 'test'
    PG.connect(dbname: 'bookmark_manager_test', :user => user, :password => password )
  else
    PG.connect(dbname: 'bookmark_manager', :user => user, :password => password )
  end

end
