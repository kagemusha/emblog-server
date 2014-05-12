require 'spec_helper'

describe PostPolicy do
  subject { PostPolicy }
  let(:post) { create(:post) }

  permissions :create? do
    it "allows contributors to create" do
      user = create(:user)
      user.add_role :contributor
      expect(subject).to permit(user)
    end
  end

  permissions :create? do
    it "allows contributors to create" do
      user = create(:user)
      expect(subject).not_to permit(user)
    end
  end

  permissions :update? do
    it "allows access if user is author" do
      expect(subject).to permit(post.author, post)
    end

    it "allows access if user is admin" do
      admin = create :admin
      expect(subject).to permit(admin, post)
    end

    it "denies access if user not author" do
      reader = create(:user)
      expect(subject).not_to permit(reader, post)
    end
  end

  permissions :destroy? do

    it "allows access if user is admin" do
      admin = create :admin
      expect(subject).to permit(admin, post)
    end

    it "doesn't allow access if user is not admin" do
      admin = create :user
      expect(subject).not_to permit(admin, post)
    end

  end
end