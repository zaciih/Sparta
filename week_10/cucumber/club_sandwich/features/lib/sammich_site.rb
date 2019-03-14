require_relative 'pages/sammich_homepage'
require_relative 'pages/sammich_show_page'

module SammichSite

  def sammich_homepage
    SammichHomepage.new
  end

  def sammich_show_page
    SammichShowPage.new
  end

end
