class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :itineraries, dependent: :destroy
  has_many :booking_requests # the booking requests created by user

  def delete
    @user.destroy
  end

end
