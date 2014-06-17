class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :markdown, :html, :status, :short, :published_at, :created_at, :updated_at
end
