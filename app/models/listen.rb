# == Schema Information
#
# Table name: listens
#
#  id         :integer          not null, primary key
#  song_id    :integer
#  user_id    :integer
#  completed  :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Listen < ActiveRecord::Base
  belongs_to :song
  belongs_to :user

  scope :completed, -> { completed: true }
end
