class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  
  def google_oauth2

    @user = User.from_omniauth(request.env["omniauth.auth"])
    
    if @user.persisted?
      sign_in @user, event: :authentication
    else
      session["devise.google_data"] = request.env["omniauth.auth"]
    end
    
    redirect_to dashboard_path
  end
end
