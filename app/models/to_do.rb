# frozen_string_literal: true

# Element of user list
class ToDo < ApplicationRecord
  belongs_to :user_task, optional: true
end
