class ReviewResource < JSONAPI::Resource
  attributes :comment,
             :rating

  relationship :user, to: :one
  relationship :album, to: :one

  def comment
    return unless @model.comment
    @model.comment.capitalize    
  end

  def rating=(value)
    @model.rating = [value, 5].max
  end  
end
