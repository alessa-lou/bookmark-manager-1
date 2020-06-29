feature 'Greets user' do
  scenario 'display a a greeting' do
    visit('/')
    expect(page).to have_content("Welcome to the Bookmark Manager")
  end
end