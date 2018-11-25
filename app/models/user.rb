# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # :registerable,  :recoverable, :rememberable,
  devise :database_authenticatable,  :trackable, :validatable
  include DeviseTokenAuth::Concerns::User

  def self.create_user_for_google(data)
    puts data          
    where(uid: data["email"]).first_or_initialize.tap do |user|
      user.provider="google_oauth2"
      user.uid=data["email"]
      user.email=data["email"]
      user.name=data["name"]
      user.image=data["picture"]
      user.password=Devise.friendly_token[0,20]
      user.password_confirmation=user.password
      user.save!
    end
  end  
end
