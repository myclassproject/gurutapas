class Author < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }  # ,  :storage => :s3 }

  has_many :bookworms
  has_many :bookpdfs
 
end
