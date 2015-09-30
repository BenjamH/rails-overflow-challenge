class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :commenter, class_name: "User", foreign_key: 'commenter_id'
  has_many :votes, as: :votable
end
