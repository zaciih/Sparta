require_relative 'pages/bbc_homepage.rb'
require_relative 'pages/bbc_sign_in_page.rb'
require_relative 'pages/bbc_register_page.rb'

class BBCSite

  def bbc_homepage
    BBCHomepage.new
  end

  def bbc_sign_in_page
    BBCSignInPage.new
  end

  def bbc_register_page
    BBCRegisterPage.new
  end


end
