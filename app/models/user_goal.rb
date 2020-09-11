class UserGoal < ApplicationRecord
  belongs_to :user
  belongs_to :goal

  scope :ordered_by_updated_at, -> { reorder(updated_at: :asc) }

end
