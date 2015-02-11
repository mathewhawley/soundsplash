class Comment < ActiveRecord::Base
  require 'obscenity/active_model'

  validates :content,  obscenity: { sanitize: true, replacement: :garbled }

  belongs_to :user
  belongs_to :track

end