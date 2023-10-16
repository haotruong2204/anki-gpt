# == Schema Information
#
# Table name: histories
#
#  id          :bigint           not null, primary key
#  description :text(65535)
#  title       :string(255)
#  type        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :integer
#  plan_id     :integer
#
class History < ApplicationRecord
  # has_one :plan
  belongs_to :account
end
