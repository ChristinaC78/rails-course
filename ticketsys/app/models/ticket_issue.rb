class TicketIssue < ApplicationRecord
    belongs_to :ticket
    belongs_to :issue
end
