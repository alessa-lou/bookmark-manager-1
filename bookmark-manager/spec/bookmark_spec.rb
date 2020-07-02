require './lib/bookmark.rb'

describe Bookmark do
  
  describe '#.all' do
    it 'returns a list of all bookmarks' do
      connection = connect_to_db

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")

      bookmarks = Bookmark.all
        
      expect(bookmarks).to include({:title=>nil, :url=>"http://www.makersacademy.com"})
      expect(bookmarks).to include({:title=>nil, :url=>"http://www.destroyallsoftware.com"})
      expect(bookmarks).to include({:title=>nil, :url=>"http://www.google.com"})
    end
  end

  describe '#add' do
    it 'add bookmark to the list' do
      Bookmark.add('http://www.testbookmark.com', 'TEST')
      expect(Bookmark.all).to include({:title=>"TEST", :url=>"http://www.testbookmark.com"})
    end
  end

end
