class Issue < ApplicationRecord
    has_many :ticket_issue
    has_many :tickets, through: :ticket_issue 
end
