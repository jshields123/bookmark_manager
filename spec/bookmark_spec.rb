require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'return all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.twitter.com')")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.facebook.com')")

      bookmarks = Bookmark.all


      expect(bookmarks).to include("http://www.makersacademy.com")
      expect(bookmarks).to include("http://www.twitter.com")
      expect(bookmarks).to include("http://www.facebook.com")

  end
  end
end