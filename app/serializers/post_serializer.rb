class PostSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :markdown, :html, :status, :short, :published_at, :created_at, :updated_at
  has_one  :author, serializer: AuthorSerializer
end
