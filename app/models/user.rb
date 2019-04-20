class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # validates :auth_token, uniqueness: true

  before_create :generate_authentication_token!

  has_many :workouts

  has_many :follower_relationships,
           class_name: 'Relationship',
           foreign_key: 'following_id',
           dependent: :destroy
  has_many :followers,
           through: :follower_relationships,
           class_name: 'User',
           foreign_key: 'follower_id'

  has_many :following_relationships,
           class_name: 'Relationship',
           foreign_key: 'follower_id',
           dependent: :destroy
  has_many :followings,
           through: :following_relationships,
           class_name: 'User',
           foreign_key: 'following_id'

  def generate_authentication_token!
    begin
      self.auth_token = Devise.friendly_token
    end while self.class.exists?(auth_token: auth_token)
  end
end
