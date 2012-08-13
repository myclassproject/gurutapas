class Book < ActiveRecord::Base
  attr_accessible :coverpicurl, :title, :blurb, :releasedate, :genre, :bookpurchaseurl, :fiftychar
  belongs_to :author

  validates :author_id, presence: true
  default_scope order: 'books.releasedate DESC'
end
