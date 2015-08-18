class Post < ActiveRecord::Base
  has_attached_file :image, styles: { :medium => "640x" }
  has_many :comments, dependent: :destroy  
  has_many :uploads
  validates :image, presence: true
  validates :user_id, presence: true

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  belongs_to :user 
  

  # accepts_nested_attributes_for :style_models, :allow_destroy => true

end
