feature 'adding bookmarks' do
  
  scenario 'bookmarks can be added to database' do
    visit('/add_bookmarks')
    fill_in('url', with: 'www.twitter.com')
    fill_in('title', with: 'Twitter')
    click_button('Submit')
    expect(page).to have_link('Twitter')
  end

end
