require 'capybara'

class BbcRegisterPage
  include Capybara::DSL

  DAY_FIELD = 'day-input'
  MONTH_FIELD = 'month-input'
  YEAR_FIELD = 'year-input'
  PASSWORD_FIELD = 'password-input'
  PASSWORD_TOGGLE = 'toggle-password-type'
  PASSWORD_ERROR = '#form-message-password'
  USERNAME_ERROR = '#form-message-email'
  USERNAME_FIELD = 'user-identifier-input'

  def select_over_thirteen
    click_link('13 or over')
  end

  def enter_DOB(day, month, year)
    fill_in(DAY_FIELD, with: day)
    fill_in(MONTH_FIELD, with: month)
    fill_in(YEAR_FIELD, with: year)
  end

  def click_next_button
    click_button('Continue')
  end

  def username_field
    find('#user-identifier-input')
  end

  def fill_in_email(username)
    fill_in(USERNAME_FIELD, with: username)
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD, with: password)
  end

  def password_field
    click_link(PASSWORD_TOGGLE)
  end

  def check_error_message
    find(PASSWORD_ERROR).text
  end

  def check_username_error_message
    find(USERNAME_ERROR).text
  end

end
