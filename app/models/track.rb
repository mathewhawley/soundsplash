class Track < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  mount_uploader :track, TrackUploader
  mount_uploader :track_image, TrackImageUploader
end