require 'capybara/dsl'

class SammichShowPage
  include Capybara::DSL

  attr_reader :showpage_url

  def initialize
    @showpage_url = SHOWPAGE_URL
  end

  # Page Objects
  SHOWPAGE_URL = 'localhost:9292/'
  # SAMMICH_LINK = '#idcta-link'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

end
