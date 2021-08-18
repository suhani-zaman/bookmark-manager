require 'pg'

class Helper
  def self.setup_test_database
    p "Setting up test database..."

    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Clear the bookmarks table
    connection.exec("TRUNCATE bookmarks;")

    # Add test bookmarks
    Bookmark.add('http://www.makersacademy.com', 'MAKERS')
    Bookmark.add('http://www.destroyallsoftware.com', 'DESTROY!')
    Bookmark.add('http://www.google.com', 'GOOGLE')
  end
end
