class Employee < ActiveRecord::Base
  belongs_to :store
  validates :last_name, :first_name, :store_id, presence: true
  validates :hourly_rate, presence: true, if: :between_40_and_200?

  def between_40_and_200?
    hourly_rate > 40 && hourly_rate < 200
  end
end
