class PostPolicy < Struct.new(:user, :post)
  class Scope < Struct.new(:user, :scope)
    def resolve
      if user.has_role?(:contributor)
        scope.where(:author=>:user)
      end
    end
  end

  def create?
    user.has_role?(:contributor)
  end

  def update?
    post.author == user or user.has_role?(:admin)
  end

  def destroy?
    user.has_role?(:admin)
  end
end