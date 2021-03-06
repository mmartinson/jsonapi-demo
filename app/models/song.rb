# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#

class Song < ActiveRecord::Base
  belongs_to :album
  has_many :listens
end
