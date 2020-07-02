feature 'Viewing bookmarks' do
  scenario 'visiting the homepage page' do
    visit('/')
    expect(page).to have_content("Bookmark Manager")
  end

  scenario 'bookmarks are visible to user' do
    connection = connect_to_db
    # # Add the test data
    connection.exec("INSERT INTO bookmarks (url, title) VALUES ('http://www.makersacademy.com', 'Makers')")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.destroyallsoftware.com', 'Destroy!!')")
    connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.google.com', 'Google')")

    visit('/bookmarks')

    expect(page).to have_link('Makers')
    expect(page).to have_link('Destroy!!')
    expect(page).to have_link("Google")
  end

end
