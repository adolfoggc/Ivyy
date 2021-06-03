# frozen_string_literal: true

# model that replicates some to_dos
class UserTask < ApplicationRecord
  has_many :to_do
end
