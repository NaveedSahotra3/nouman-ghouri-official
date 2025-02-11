class PortfolioItem < ApplicationRecord
  # Active Storage attachments
  has_one_attached :thumbnail
  has_one_attached :image

  # Allowlist associations for Ransack
  def self.ransackable_associations(auth_object = nil)
    # List associations that should be searchable
    ["image_attachment", "image_blob", "thumbnail_attachment", "thumbnail_blob"]
  end

  # Allowlist attributes for Ransack
  def self.ransackable_attributes(auth_object = nil)
    # List attributes that should be searchable
    ["title", "category", "link", "created_at", "updated_at"]
  end
end