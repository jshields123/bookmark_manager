require 'pg'

feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    Bookmark.create(url: "http://www.makersacademy.com")
    Bookmark.create(url: "http://www.facebook.com")
    Bookmark.create(url: "http://www.twitter.com")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://www.twitter.com"

  end
end
