class Relationship < ActiveRecord::Base
  attr_accessible :follower_id, :followed_id

  belongs_to :follower, class_name:'User'
  belongs_to :followed, class_name: 'User'
end
