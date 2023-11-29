class Quest < ApplicationRecord
    belongs_to :reward1, class_name: 'Reward', optional: true
    belongs_to :reward2, class_name: 'Reward', optional: true
    belongs_to :reward3, class_name: 'Reward', optional: true
end
