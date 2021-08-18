require 'bookmark'

describe Bookmark do
  let(:bookmarks) { Bookmark.all }
  describe '#self.all' do
    it 'returns a list of bookmarks' do
      expect(bookmarks).to include(['MAKERS', 'http://www.makersacademy.com'])
      expect(bookmarks).to include(['DESTROY!', 'http://www.destroyallsoftware.com'])
      expect(bookmarks).to include(['GOOGLE', 'http://www.google.com'])
    end
  end

  describe '#self.add' do
    it 'adds a bookmark' do
      Bookmark.add('www.amazon.com','Amazon')
      expect(bookmarks).to include(['Amazon', 'www.amazon.com'])
    end
  end
end