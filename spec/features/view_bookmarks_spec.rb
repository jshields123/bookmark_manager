feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook')
    Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')

    visit('/bookmarks')

    expect(page).to have_content('Makers Academy')
    expect(page).to have_content('http://www.makersacademy.com')
    expect(page).to have_content('Facebook')
    expect(page).to have_content('Twitter')
    expect(page).to have_content('http://www.facebook.com')
    expect(page).to have_content('http://www.twitter.com')
  end
end
