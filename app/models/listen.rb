class Listen < ActiveRecord::Base
  belongs_to :song
  belongs_to :user
end
