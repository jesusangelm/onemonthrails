class Pin < ActiveRecord::Base
  has_attached_file :image, styles: {
    :medium => "300x300>",
    :thumb => "100x100>"
      },
    :default_url => "/images/:style/missing.png"

  belongs_to :user

  validates :description, presence: true
  validates :user_id, presence: true
  validates :image, :attachment_presence => true

  validates_attachment :image,
    size: { less_than: 5.megabytes },
    :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] }

end
