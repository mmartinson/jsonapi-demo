class ListenResource < JSONAPI::Resource
  relationship :user, to: :one

  attributes :song_name

  def song_name
    @model.song.name
  end
end
