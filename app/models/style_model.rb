class StyleModel < ActiveRecord::Base
  validates :image, presence: true
  validates :image_url, presence: true
  validates :purchase_url, presence: true
  validates :user_id, presence: true
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :post

  has_attached_file :attachment
 # has_attached_file :image, :styles => { :medium => "640x645>", 
 #                                                         :thumb => "160x160#"}
end
