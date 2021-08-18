require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection  = PG.connect( dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec( "SELECT * FROM bookmarks")
    result.map { |bookmark| [bookmark["title"], bookmark['url']]}
  end

  def self.add(url, title)
    if ENV['ENVIRONMENT'] == 'test'
      connection  = PG.connect( dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec_params("INSERT INTO bookmarks (url, title) VALUES ($1, $2);", [url, title])
  end
end
