require 'spec_helper'

describe 'BBC Register page functionality' do

  before(:all) do
    @bbcsite = BBCSite.new
  end
  before(:each) do
    # visit homepage
    @bbcsite.bbc_homepage.visit_homepage
    expect(@bbcsite.bbc_homepage.current_url).to eq 'https://www.bbc.co.uk/'

    # click sign in link
    @bbcsite.bbc_homepage.click_sign_in
    @bbcsite.bbc_sign_in_page.find_register_link
  end

  context 'it should prompt the user for their date of birth' do
    it "should prompt the user for their dob" do
      @bbcsite.bbc_register_page.click_13_or_over
      sleep 3    
    end
  end
end
