class Reward < ApplicationRecord
    enum category: { sword: 'sword', armor: 'armor', staff: 'staff', shield: 'shield' }, _suffix: true
end
