class Purpose < ActiveRecord::Base
  belongs_to :user

  validates :goal, presence: true
end
