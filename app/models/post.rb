class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  scope :published, -> { where(status: "published") }

  before_create :set_draft

  def set_draft
    self.status = "draft" if not self.status
  end

  def status=(new_status)
    if (status=="draft" or not status) and new_status == "published"
      self.published_at=Time.zone.now
    end
    write_attribute(:status, new_status)
  end

end

