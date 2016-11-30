Given(/^I am about to login$/) do

  @current_page = page(LoginPage).await(timeout: 30)

end

When(/^I enter valid credentials$/) do
  user = CREDENTIALS[:valid_user]
  @current_page = @current_page.login(user[:username],
                                      user[:password])
end