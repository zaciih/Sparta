require 'capybara'

class BbcSignInPage
  include Capybara::DSL

  REGISTER_URL = 'https://www.bbc.co.uk/register'

  def visit_register_page
    visit(REGISTER_URL)
  end

  def click_register_link
    click_link('Register now')
  end

end
