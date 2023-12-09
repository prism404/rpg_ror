class Quest < ApplicationRecord
    belongs_to :reward_1, class_name: 'Reward'
    belongs_to :reward_2, class_name: 'Reward'
    belongs_to :reward_3, class_name: 'Reward'
end
  