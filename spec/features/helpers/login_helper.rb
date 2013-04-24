require "spec_helper"
module LoginHelper
  def login(user)
    visit root_path
    click_link("Login")
    fill_in("Email", :with=>user.email)
    fill_in("Password", :with=>user.password)
    click_button("Login")
    page.should have_text("Logout")
  end

end