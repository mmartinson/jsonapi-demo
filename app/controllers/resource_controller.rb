class ResourceController < ApplicationController
  include JSONAPI::ActsAsResourceController

  def context
    {current_user_id: User.first.try(:id)}
  end
end