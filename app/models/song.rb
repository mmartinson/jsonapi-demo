# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  album_id   :integer
#  listen_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :album
  belongs_to :listen
end
