# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  layout "admin/unauthenticate_layout"

  def destroy
    flash[:success] = I18n.t("devise.sessions.signed_out") if sign_out current_admin_admin
    redirect_to new_admin_admin_session_path
  end
end
