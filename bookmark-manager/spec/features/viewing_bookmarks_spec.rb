feature 'view bookmarks as list' do
  scenario 'display a list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content("Here are your bookmarks")
    expect(page).to have_content("Makers Github")
    expect(page).to have_content("https://github.com/makersacademy")
  end
end