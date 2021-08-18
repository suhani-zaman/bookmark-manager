require 'bookmark'

describe Bookmark do
  let(:bookmarks) { Bookmark.all }
  describe '#self.all' do
    it 'returns a list of bookmarks' do
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  describe '#self.add' do
    it 'adds a bookmark' do
      Bookmark.add('bookmark')
      expect(bookmarks).to include('bookmark')
    end
  end
end