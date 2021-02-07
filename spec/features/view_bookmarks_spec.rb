require 'pg'

feature 'Viewing bookmarks' do
  scenario 'a user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'http://www.facebook.com');")
    connection.exec("INSERT INTO bookmarks VALUES (3, 'http://www.twitter.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.facebook.com"
    expect(page).to have_content "http://www.twitter.com"

  end
end
