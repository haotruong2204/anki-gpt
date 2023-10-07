class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :async,
         :recoverable, :rememberable, :trackable, :confirmable, :lockable,
         :omniauthable, :confirmable, :validatable, omniauth_providers: [:facebook, :google_oauth2, :github, :line]
end
