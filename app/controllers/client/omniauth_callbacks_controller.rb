class Client::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    generic_callback(:google_oauth2)
  end

  def generic_callback provider
    @account = Account.from_omniauth(request.env["omniauth.auth"])
    account_exits = Account.where("email = ? and provider != ?", @account.email, provider).take
    return handle_account_exits(account_exits, provider) if account_exits

    if @account.persisted?
      set_flash_message(:notice, :success, kind: provider.capitalize)
    else
      @account.email = @account.uid if @account.email.blank?
      @account.save(validate: false)
      @account.histories.create(
        type_history: :create_account,
        title: "Chào mừng bạn đến với hệ thống!",
        description: "Chúc bạn có những trải nghiệm thú vị trong hành trình học tiếng Nhật.",
      )
    end
    @account.update last_sign_in_at: Time.zone.now
    sign_in_and_redirect @account, event: :authentication
  end

  def failure
    redirect_to root_path
  end

  private

  def handle_account_exits account_exits, provider
    account_exits.uid = @account.uid
    account_exits.provider = provider

    account_exits.save
    set_flash_message(:notice, :success, kind: provider.capitalize)
    sign_in_and_redirect account_exits, event: :authentication
  end
end
