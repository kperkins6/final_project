class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  has_many :comments, :dependent => destroy
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200"}

  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
  validates_attachment_content_type :document, :content_type =>['application/pdf']
end
