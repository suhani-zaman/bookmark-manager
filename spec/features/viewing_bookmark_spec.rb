feature 'Index page' do
  scenario "expects the page to have title" do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
  scenario "viewing bookmark page" do
    #visit('/bookmarks')
    page = Bookmark.all
    expect(page).to include "http://www.makersacademy.com"
    expect(page).to include "http://www.destroyallsoftware.com"
    expect(page).to include "http://www.google.com"
  end
end
