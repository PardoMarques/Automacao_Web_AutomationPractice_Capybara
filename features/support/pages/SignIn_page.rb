class SignInPage < BasePage

    element :input_create, '#email_create'
    element :input_email, '#email'
    element :input_password, '#passwd'

    element :btn_signIn, '#SubmitLogin'
    element :btn_create, '#SubmitCreate'
  
    def doLogin(login, passw)
      input_email.set login
      input_password.set passw
      btn_logar.click
    end

    def createNewAcc(emailText)
      input_create.set emailText
      btn_create.click
    end

  def go
    visit '/index.php?controller=authentication&back=my-account'
  end
  
end