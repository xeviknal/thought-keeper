class List < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true

  has_many :thoughts
  belongs_to :user
end
