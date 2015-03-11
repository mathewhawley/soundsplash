class User < ActiveRecord::Base
  has_many :comments
  has_many :tracks

  has_many :active_relationships, class_name:  "Relationship", foreign_key: "follower_id", dependent: :destroy

  has_many :following, through: :active_relationships, source: :followed

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :profile_picture, ProfilePictureUploader

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end

  def admin?
    role == 'admin'
  end
end
