feature 'Index page' do
  scenario "expects the page to have title" do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
  scenario "viewing bookmark page" do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
