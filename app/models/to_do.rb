# frozen_string_literal: true

# Element of user list
class ToDo < ApplicationRecord
  belongs_to :user_task, optional: true
  validates :description, :due_date, presence: true
end
