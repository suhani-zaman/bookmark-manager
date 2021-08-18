feature 'add bookmarks' do
  scenario 'add bookmark on bookmarks page' do
    visit('/bookmarks')
    fill_in("url", with: 'http://www.facebook.com/')
    fill_in("title", with: 'FACEBOOK')
    click_button('Add bookmark')
    expect(page).to have_content 'FACEBOOK'
  end
end