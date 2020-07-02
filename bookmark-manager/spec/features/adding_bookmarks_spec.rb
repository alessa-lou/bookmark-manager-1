feature 'adding bookmarks' do
  scenario 'bookmarks can be added to database' do
    visit('/add_bookmarks')
    fill_in('url', with: 'www.twitter.com')
    click_button('Submit')
    expect(page).to have_content('www.twitter.com')
  end

  scenario 'bookmark added to list' do
    Bookmark.add('http://www.testbookmark.com')
    expect(Bookmark.all).to include 'http://www.testbookmark.com'
  end
end
