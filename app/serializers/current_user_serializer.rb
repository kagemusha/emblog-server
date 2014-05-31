class CurrentUserSerializer < ActiveModel::Serializer
  attributes :id, :email, :is_contributor

  def is_contributor
    object.has_role?("contributor")
  end
end
