class Enigma < ApplicationRecord
    validates :question, presence: true
    validates :correct_response, presence: true, inclusion: { in: %w(response1 response2 response3) }
    validates :response1, presence: true
    validates :response2, presence: true
    validates :response3, presence: true
end