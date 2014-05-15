class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :markdown, :html, :status, :created_at, :updated_at
end
