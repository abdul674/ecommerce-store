class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ROLES = {
    'Admin' => 1,
    'Staff' => 2,
    'Customer' => 3
  }.freeze

  def full_name
    "#{first_name} #{last_name}"
  end

  def admin?
    role_id == ROLES['Admin']
  end

  def staff?
    role_id == ROLES['Staff']
  end

  def customer?
    role_id == ROLES['Customer']
  end
end
