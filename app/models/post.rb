class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  scope :published, -> { where(status: "published") }
end

