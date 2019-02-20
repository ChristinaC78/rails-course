class TicketsysTicketsController < ApplicationController
    
    def index
        @tickets = Ticket.where(status: ['submitted', 'assigned', 'working', 'worked'])
    end
    
    def assign
        @ticket =  Ticket.find(params[:id])
        @ticket.status = 'assigned'
        @ticket.save
        redirect_to ticketsys_tickets_path
    end
    
    def working
        @ticket =  Ticket.find(params[:id])
        @ticket.status = 'working'
        @ticket.save
        redirect_to ticketsys_tickets_path
    end
    
    def worked
        @ticket =  Ticket.find(params[:id])
        @ticket.status = 'worked'
        @ticket.save
        redirect_to ticketsys_tickets_path
    end
    
    def complete
        @ticket =  Ticket.find(params[:id])
        @ticket.status = 'complete'
        @ticket.save
        redirect_to ticketsys_tickets_path
    end
    
end
