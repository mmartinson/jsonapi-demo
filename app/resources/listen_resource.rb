class ListenResource < JSONAPI::Resource
  relationship :song, to: :one
  relationship :user, to: :one
end
