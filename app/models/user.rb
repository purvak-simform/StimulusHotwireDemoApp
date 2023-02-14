class User < ApplicationRecord
  enum role: { basic: 0, admin: 1 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # has_secure_password
  has_many :uploads, dependent: :destroy

  after_commit lambda {
                        broadcast_update_to 'users', partial: 'users/users_count', locals: { users: User.all },
                                                       target: 'users'
                      }
  def decorated
    UserDecorator.new self
  end
end
