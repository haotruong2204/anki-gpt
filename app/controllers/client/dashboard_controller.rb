# frozen_string_literal: true

class Client::DashboardController < Client::BaseController
  def index
    @record = Record.new
  end
end
