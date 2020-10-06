class List < ApplicationRecord
  validates :list_name, presence: true
  validates :list_comment, presence: true
end
