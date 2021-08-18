feature 'Index page' do
  scenario "expects the page to have title" do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario "A user can see bookmarks" do
    visit('/bookmarks')
    expect(page).to have_content 'MAKERS'
    expect(page).to have_content 'DESTROY!'
    expect(page).to have_content 'GOOGLE'
  end
end
