class Task < ActiveRecord::Base
  attr_accessible :completed, :date, :description

  validates :description, presence: true, length: { maximum: 100 }
  validates :date, presence: true

end
