require 'pg'

class Bookmark


  def self.all
    conn = PG.connect( dbname: 'bookmark_manager')
    res = conn.exec( "SELECT * FROM bookmarks")
    res.each do |row|
      puts row["url"]
    end
  end
end

Bookmark.all
