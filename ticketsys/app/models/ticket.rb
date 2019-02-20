class Ticket < ApplicationRecord
    belongs_to :user
    has_many :ticket_issues
    has_many :tickets, through: :ticket_issues
end
