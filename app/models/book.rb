class Book < ActiveRecord::Base
  attr_accessible :coverpicurl, :title, :blurb, :releasedate, :genre, :bookpurchaseurl, :fiftychar
  belongs_to :author
  has_many :purchases

  validates :author_id, presence: true
  default_scope order: 'books.releasedate DESC'

end
