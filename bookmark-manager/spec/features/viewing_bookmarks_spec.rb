feature 'Viewing bookmarks' do
  scenario 'visiting the homepage page' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end

  scenario 'bookmarks are visible to user' do
    visit('/bookmarks')
    expect(page).to have_content("http://www.makersacademy.com")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end
end
