class ResourceController < ApplicationController
  include JSONAPI::ActsAsResourceController

  def context
    {current_user: User.first}
  end
end