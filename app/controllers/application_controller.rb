# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def after_sign_out_path_for resource_or_scope
    return new_admin_admin_session if resource_or_scope == :admin_admin

    super
  end

  def after_sign_in_path_for resource_or_scope
    return admin_root_path if resource_or_scope.is_a?(Admin)

    super
  end
end
