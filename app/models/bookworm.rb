class Bookworm < ActiveRecord::Base

  belongs_to :author

 attr_accessible :name, :email, :password, :password_confirmation, :genre, :genre2, :genre3, :fanauthor, :fanauthor2, :fanauthor3, :todo, :todo2, :fanbook, :fanbook2, :fanbook3, :review, :review2, :review3, :authorreview, :authorreview2, :authorreview3, :twitter, :facebook

  has_secure_password

  before_save { |bookworm| bookworm.email = email.downcase }
  before_save :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
