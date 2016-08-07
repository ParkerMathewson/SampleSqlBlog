class Article < ActiveRecord::Base
  validates :title, presence: true,
            length:  {minimum: 5, too_short: "%{count} is the minimum characters needed." }
  has_many :comments, dependent: :destroy                                                                                                                                                                                   
end
