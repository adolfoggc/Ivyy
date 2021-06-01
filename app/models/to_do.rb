class ToDo < ApplicationRecord
  belongs_to :user_task, optional: true
end
