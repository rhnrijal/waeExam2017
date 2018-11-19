class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :role
  before_validation :assign_role

  def assign_role
    self.role = "Student" if self.role.nil?
  end
  def admin?
    self.role.name == "Admin" if !self.role.blank?
  end
  def student?
    self.role.name == "Student" if !self.role.blank?
  end
end
