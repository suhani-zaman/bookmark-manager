require 'pg'

class Bookmark


  def self.all
    conn = PG.connect( dbname: 'bookmark_manager')
    res = conn.exec( "SELECT * FROM bookmarks")
    res.map do |row|
       row["url"]
    end
  end
end

Bookmark.all
