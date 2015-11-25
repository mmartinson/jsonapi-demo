class ReviewResource < JSONAPI::Resource
  attributes :comment,
             :rating

  relationship :user, to: :one
  relationship :album, to: :one
end
