# == Schema Information
#
# Table name: albums
#
#  id           :integer          not null, primary key
#  title        :string
#  image_url    :string
#  release_date :date
#  country      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Album < ActiveRecord::Base
  has_many :songs
  has_many :reviews
end
