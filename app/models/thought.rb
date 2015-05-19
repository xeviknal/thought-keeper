class Thought < ActiveRecord::Base
  attr_accessible :title, :description

  validates :title, presence: true

  belongs_to :list, counter_cache: true
end
