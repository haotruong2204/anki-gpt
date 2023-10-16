# frozen_string_literal: true

# == Schema Information
#
# Table name: histories
#
#  id           :bigint           not null, primary key
#  description  :text(65535)
#  title        :string(255)
#  type_history :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  account_id   :integer
#  plan_id      :integer
#
class History < ApplicationRecord
  # has_one :plan
  belongs_to :account
  enum type_history: { download: 1, create_account: 2, upgrade_plan: 3, expire_plan: 4 }
end
