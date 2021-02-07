feature 'adding a new bookmark' do
  scenario ' a user can add a bookmark to bookmark manager' do
    visit '/bookmarks/new'
    fill_in 'url', with: 'http://www.testbookmark.com'
    fill_in 'title', with: 'Test Bookmark'
    click_button 'Submit'

    expect(page).to have_content 'Test Bookmark'
    expect(page).to have_content 'http://www.testbookmark.com'
  end
end
