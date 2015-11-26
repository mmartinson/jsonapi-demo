class DirectoryController < ApplicationController
  def index
    directory = Dir.entries('./app/resources').map do |entry|
        name, is_resource = entry.split '_'

        url = env['REQUEST_URI'] + name.pluralize
        is_resource == 'resource.rb' ? url : nil
    end.compact
    render json: directory
  end
end