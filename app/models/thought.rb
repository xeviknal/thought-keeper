class Thought < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :list, counter_cache: true
end
