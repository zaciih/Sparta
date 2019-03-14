require 'capybara/dsl'

class SammichHomepage
  include Capybara::DSL

  attr_reader :homepage_url

  def initialize
    @homepage_url = HOMEPAGE_URL
  end

  # Page Objects
  HOMEPAGE_URL = 'localhost:9292'
  SAMMICH_LINK = '.content'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def sammich_link sammich
    click_link(sammich)
  end

  def find_sammiches
    find_all(SAMMICH_LINK).length
  end


end
