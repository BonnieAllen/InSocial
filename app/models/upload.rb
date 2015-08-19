class Upload < ActiveRecord::Base
  has_attached_file :uploaded_file, styles: { original: "4000x4000>", large: "1500x1500>", medium: "640x645>", small: "200x200>", thumb: "160x160>" }, default_url: "/images/:style/missing.png"
  # validates :image_url, presence: true
  validates :uploaded_file, presence: true
  # has_attached_file :uploaded_file
  validates_attachment_content_type :uploaded_file, 
  content_type: [
  "image/jpg", 
  "image/jpeg", 
  "image/png", 
  "image/gif"]

  belongs_to :post
end
