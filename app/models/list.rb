class List < ActiveRecord::Base
  validates :name, presence: true

  has_many :thoughts, dependent: :destroy
  belongs_to :user

  def build_thought(thought_params)
    new_thought = self.thoughts.build(thought_params)
    compute_weight(new_thought)
  end

  private

  def compute_weight(thought)
    self.weight = weight + thought.weight
  end
end
