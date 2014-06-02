class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  scope :published, -> { where(status: "published") }

  before_create :set_draft

  def set_draft
    self.status = "draft" if not self.status
  end
end

