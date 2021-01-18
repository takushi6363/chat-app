class Message < ApplicationRecord
  belongs_to :room
  belpngs_to :user
end
