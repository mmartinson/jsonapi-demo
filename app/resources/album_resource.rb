class AlbumResource < JSONAPI::Resource
  attributes :title,
             :image_url,
             :release_date,
             :review_count

  relationship :songs, to: :many
  relationship :reviews, to: :many

  def review_count
    @model
  end
end
