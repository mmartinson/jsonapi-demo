class AlbumResource < JSONAPI::Resource
  attributes :title,
             :image_url,
             :release_date,
             :completed_listen_count

  relationship :songs, to: :many
  relationship :reviews, to: :many

  def completed_listen_count
    @model.songs.reduce(0) do |acc, song|
      acc + song.listens.completed
    end
  end

  #modify the base record set
  def self.records(data)
    super.includes(songs: :listens)
  end
end
