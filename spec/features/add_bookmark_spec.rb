feature 'add bookmarks' do
  scenario 'add bookmark on bookmarks page' do
    visit('/bookmarks')
    fill_in("url", with: 'http://www.facebook.com/')
    click_button('Add bookmark')
    expect(page).to have_content 'http://www.facebook.com/'
  end
end