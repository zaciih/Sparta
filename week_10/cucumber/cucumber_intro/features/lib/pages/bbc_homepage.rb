class BBCHomepage

  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.bbc.co.uk'
  SIGN_IN_LINK_ID = '#idcta-link'
  SIGN_IN_TEXT_ID = '#idcta-username'

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in
    sign_in_link.click
  end

  def sign_in_link_text
    find(SIGN_IN_TEXT_ID).text
  end


end
