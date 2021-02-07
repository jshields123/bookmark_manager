feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook')
    Bookmark.create(url: 'http://www.twitter.com', title: 'Twitter')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')
    expect(page).to have_link('Facebook', href: 'http://www.facebook.com')
    expect(page).to have_link('Twitter', href: 'http://www.twitter.com')
  end
end
