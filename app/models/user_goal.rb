class UserGoal < ApplicationRecord
  belongs_to :user
  belongs_to :goal

  scope :ordered_by_updated_at, -> { order(updated_at: :asc) }

end
