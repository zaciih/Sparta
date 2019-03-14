class BBCSignInPage
  include Capybara::DSL

  USERNAME_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  SUBMIT_BUTTON_ID = 'submit-button'
  USERNAME_ERROR_MSG = '#form-message-username'
  PASSWORD_ERROR_MSG = '#form-message-password'

  def fill_in_username input
    fill_in(USERNAME_FIELD_ID, with: input)
  end

  def fill_in_password input
    fill_in(PASSWORD_FIELD_ID, with: input)
  end

  def click_sign_in
    click_button(SUBMIT_BUTTON_ID)
  end

  def find_username_error_msg
    find(USERNAME_ERROR_MSG).text
  end

  def find_password_error_msg
    find(PASSWORD_ERROR_MSG).text
  end

  def find_register_link
    click_link('Register now')
  end

end
