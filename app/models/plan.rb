class Plan < ActiveRecord::Base
 attr_accessible :name, :author_id, :price, :term

  has_many :purchases

end
