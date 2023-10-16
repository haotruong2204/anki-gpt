# frozen_string_literal: true

class Client::AccountsController < Client::BaseController
  before_action :set_account, only: [:show]

  def show
  end

  private

  def set_account
    @account = Account.friendly.find(params[:id])
  end
end
