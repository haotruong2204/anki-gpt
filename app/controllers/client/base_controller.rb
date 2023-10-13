# frozen_string_literal: true

class Client::BaseController < ApplicationController
  before_action :authenticate_account!
end
