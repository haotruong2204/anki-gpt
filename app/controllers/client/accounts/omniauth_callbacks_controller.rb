class Client::Accounts::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @account = Account.create_from_provider_data request.env["omniauth.auth"]
    if @account.persisted?
      sign_in_and_redirect @account, event: :authentication
      set_flash_message(:notice, :success, kind: "Google") if is_navigational_format?
    else
      flash[:error] = check_errors
      redirect_to root_path
    end
  end

  def failure
    flash[:error] = t("common.errors.login_failed")
    redirect_to root_path
  end

  private

  def check_errors
    if @account.try(:errors).try(:messages) && @account.errors.messages[:email] &&
      @account.errors.messages[:email].include?(t("common.errors.dupplicate_mail"))

      t("common.errors.dupplicate_mail")
    else
      t("common.errors.login_failed")
    end
  end
end
