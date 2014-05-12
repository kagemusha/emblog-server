class PostPolicy
  attr_reader :user, :post

  def initialize(user, post)
    @user = user
    @post = post
  end

  def create?
    @user.has_role?(:contributor)
  end

  def update?
    @post.author == @user or @user.has_role?(:admin)
  end

  def destroy?
    @user.has_role?(:admin)
  end
end