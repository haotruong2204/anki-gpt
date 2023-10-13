# == Schema Information
#
# Table name: accounts
#
#  id                     :bigint           not null, primary key
#  address                :string(255)
#  birth_of_date          :datetime
#  confirmation_sent_at   :datetime
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string(255)
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  expires_at             :datetime
#  failed_attempts        :integer          default(0), not null
#  full_name              :string(255)      not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string(255)
#  locked_at              :datetime
#  phone_number           :integer
#  photo_url              :text(65535)
#  provider               :string(255)
#  refresh_token          :string(255)
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  sign_in_count          :integer          default(0), not null
#  status                 :integer          default(1)
#  token                  :string(255)
#  uid                    :string(255)
#  unconfirmed_email      :string(255)
#  unlock_token           :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  role_id                :integer
#
# Indexes
#
#  index_accounts_on_confirmation_token    (confirmation_token) UNIQUE
#  index_accounts_on_email                 (email) UNIQUE
#  index_accounts_on_reset_password_token  (reset_password_token) UNIQUE
#  index_accounts_on_unlock_token          (unlock_token) UNIQUE
#
require "test_helper"

class AccountTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
