# frozen_string_literal: true

class Client::SessionsController < Devise::SessionsController
  layout "client/unauthenticate_layout"

  def destroy
    flash[:success] = I18n.t("devise.sessions.signed_out") if sign_out current_account
    redirect_to new_account_session_path
  end
end
