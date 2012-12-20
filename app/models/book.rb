class Book < ActiveRecord::Base
  attr_accessible :coverpicurl, :title, :blurb, :releasedate, :genre, :bookpurchaseurl, :fiftychar, :author_id, :name, :bookpdf, :remote_bookpdf_url, :image, :remote_image_url, :coverpic, :remote_coverpic_url
  belongs_to :author
  has_many :purchases

  validates :author_id, presence: true
  default_scope order: 'books.releasedate DESC'

  mount_uploader :bookpdf, BookpdfUploader
  mount_uploader :image, ImageUploader
  mount_uploader :coverpic, CoverpicUploader

end
