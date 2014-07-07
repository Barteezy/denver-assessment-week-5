require "spec_helper"

feature "User Authentication" do
  scenario "user can login, see their contacts, and logout" do
    visit "/"
    expect(page).to have_content "Contacts"

    click_on "Login"
    expect(page).to have_content "Username"
    expect(page).to have_content "Password"

    fill_in "Username", :with => "Jeff"
    fill_in "Password", :with => "jeff123"

    click_on "Login"

    expect(page).to have_content "Welcome Jeff"

    expect(page).to have_content "Your Contacts"

    click_on "Logout"
  end
end